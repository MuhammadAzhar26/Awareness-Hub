Deno.serve(async (req) => {
    const corsHeaders = {
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
        'Access-Control-Allow-Methods': 'POST, OPTIONS',
        'Access-Control-Max-Age': '86400',
    };

    if (req.method === 'OPTIONS') {
        return new Response(null, { status: 200, headers: corsHeaders });
    }

    try {
        const { stageId, answer, hintsUsed, timeSpent } = await req.json();
        
        const supabaseUrl = Deno.env.get('SUPABASE_URL');
        const serviceRoleKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY');
        
        // Get user from auth header
        const authHeader = req.headers.get('authorization');
        if (!authHeader) {
            throw new Error('No authorization');
        }
        const token = authHeader.replace('Bearer ', '');
        
        // Verify user
        const userResponse = await fetch(`${supabaseUrl}/auth/v1/user`, {
            headers: {
                'Authorization': `Bearer ${token}`,
                'apikey': serviceRoleKey
            }
        });
        
        if (!userResponse.ok) {
            throw new Error('Invalid token');
        }
        
        const userData = await userResponse.json();
        const userId = userData.id;
        
        // Get stage details
        const stageResponse = await fetch(
            `${supabaseUrl}/rest/v1/stages?id=eq.${stageId}&select=*`,
            {
                headers: {
                    'Authorization': `Bearer ${serviceRoleKey}`,
                    'apikey': serviceRoleKey
                }
            }
        );
        
        const stages = await stageResponse.json();
        if (!stages || stages.length === 0) {
            throw new Error('Stage not found');
        }
        
        const stage = stages[0];
        let isCorrect = false;

        // Validate answer based on challenge type
        const challengeType = stage.challenge_type || 'text';
        
        switch (challengeType) {
            case 'matching':
                // Answer format: "id1:id2,id3:id4" (leftId:rightId pairs)
                isCorrect = validateMatchingAnswer(answer, stage);
                break;
                
            case 'scenario':
                // Answer format: "opt1,opt2,opt3" (comma-separated option IDs)
                isCorrect = validateScenarioAnswer(answer, stage);
                break;
                
            case 'drag-drop':
                // Answer format: "zone1:item1,item2;zone2:item3" (zone:items)
                isCorrect = validateDragDropAnswer(answer, stage);
                break;
                
            case 'code-analysis':
                // Answer format: "issue1,issue2,issue3" (comma-separated issue IDs)
                isCorrect = validateCodeAnalysisAnswer(answer, stage);
                break;
                
            case 'text':
            default:
                // Simple text comparison
                isCorrect = answer.trim().toLowerCase() === stage.correct_answer.toLowerCase();
                break;
        }
        
        if (!isCorrect) {
            return new Response(JSON.stringify({
                correct: false,
                message: 'Incorrect answer. Try again!'
            }), {
                headers: { ...corsHeaders, 'Content-Type': 'application/json' }
            });
        }
        
        // Calculate points
        let pointsEarned = stage.points;
        const penalties = [-10, -20, -30];
        hintsUsed.forEach((hintNum: number) => {
            pointsEarned += penalties[hintNum - 1];
        });
        
        // Time bonus: +10 points if completed in under 60 seconds
        if (timeSpent < 60) {
            pointsEarned += 10;
        }
        
        pointsEarned = Math.max(pointsEarned, 10); // Minimum 10 points
        
        // Update user progress
        const progressResponse = await fetch(
            `${supabaseUrl}/rest/v1/user_progress`,
            {
                method: 'POST',
                headers: {
                    'Authorization': `Bearer ${serviceRoleKey}`,
                    'apikey': serviceRoleKey,
                    'Content-Type': 'application/json',
                    'Prefer': 'resolution=merge-duplicates,return=representation'
                },
                body: JSON.stringify({
                    user_id: userId,
                    stage_id: stageId,
                    status: 'completed',
                    hints_used: hintsUsed,
                    points_earned: pointsEarned,
                    completed_at: new Date().toISOString(),
                    time_spent: timeSpent
                })
            }
        );
        
        // Update user total points
        const profileResponse = await fetch(
            `${supabaseUrl}/rest/v1/user_profiles?id=eq.${userId}`,
            {
                method: 'PATCH',
                headers: {
                    'Authorization': `Bearer ${serviceRoleKey}`,
                    'apikey': serviceRoleKey,
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    total_points: `total_points + ${pointsEarned}`
                })
            }
        );
        
        // Log activity
        await fetch(
            `${supabaseUrl}/rest/v1/activity_log`,
            {
                method: 'POST',
                headers: {
                    'Authorization': `Bearer ${serviceRoleKey}`,
                    'apikey': serviceRoleKey,
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    user_id: userId,
                    activity_type: 'stage_completed',
                    details: {
                        stage_id: stageId,
                        points_earned: pointsEarned,
                        hints_used: hintsUsed.length,
                        time_spent: timeSpent
                    }
                })
            }
        );
        
        return new Response(JSON.stringify({
            correct: true,
            points_earned: pointsEarned,
            message: 'Correct! Well done!'
        }), {
            headers: { ...corsHeaders, 'Content-Type': 'application/json' }
        });
        
    } catch (error) {
        return new Response(JSON.stringify({
            error: error.message
        }), {
            status: 500,
            headers: { ...corsHeaders, 'Content-Type': 'application/json' }
        });
    }
});

// Validation functions for different challenge types
function validateMatchingAnswer(answer: string, stage: any): boolean {
    if (!stage.challenge_data?.pairs) return false;
    
    // Parse answer format: "id1:id2,id3:id4"
    const userMatches = new Map();
    answer.split(',').forEach(pair => {
        const [left, right] = pair.split(':');
        if (left && right) {
            userMatches.set(left, right);
        }
    });
    
    // Check if all pairs match correctly
    const correctPairs = stage.challenge_data.pairs;
    if (userMatches.size !== correctPairs.length) return false;
    
    return correctPairs.every((pair: any) => 
        userMatches.get(pair.id) === pair.id
    );
}

function validateScenarioAnswer(answer: string, stage: any): boolean {
    if (!stage.challenge_data?.sections) return false;
    
    // Parse answer format: "opt1,opt2,opt3"
    const userSelections = answer.split(',');
    const correctAnswer = stage.correct_answer;
    
    // Compare with correct answer (same format)
    return answer === correctAnswer;
}

function validateDragDropAnswer(answer: string, stage: any): boolean {
    if (!stage.challenge_data?.zones) return false;
    
    // Parse answer format: "zone1:item1,item2;zone2:item3"
    const userAssignments = new Map();
    answer.split(';').forEach(zoneBlock => {
        const [zoneId, itemsStr] = zoneBlock.split(':');
        if (zoneId && itemsStr && itemsStr !== 'empty') {
            userAssignments.set(zoneId, new Set(itemsStr.split(',')));
        }
    });
    
    // Check if items are correctly assigned to zones
    const zones = stage.challenge_data.zones;
    return zones.every((zone: any) => {
        const userItems = userAssignments.get(zone.id);
        if (!userItems) return zone.correctItems.length === 0;
        
        const correctSet = new Set(zone.correctItems);
        if (userItems.size !== correctSet.size) return false;
        
        return Array.from(userItems).every(item => correctSet.has(item));
    });
}

function validateCodeAnalysisAnswer(answer: string, stage: any): boolean {
    if (!stage.challenge_data?.issues) return false;
    
    // Parse answer format: "issue1,issue2,issue3"
    const userIssues = new Set(answer.split(',').filter(Boolean));
    const correctAnswer = stage.correct_answer;
    
    // Compare with correct answer (comma-separated issue IDs)
    const correctIssues = new Set(correctAnswer.split(',').filter(Boolean));
    
    if (userIssues.size !== correctIssues.size) return false;
    
    return Array.from(userIssues).every(issue => correctIssues.has(issue));
}
