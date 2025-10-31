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
        const supabaseUrl = Deno.env.get('SUPABASE_URL');
        const serviceRoleKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY');
        
        // Get user from auth header
        const authHeader = req.headers.get('authorization');
        if (!authHeader) {
            throw new Error('No authorization');
        }
        const token = authHeader.replace('Bearer ', '');
        
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
        
        // Get user progress
        const progressResponse = await fetch(
            `${supabaseUrl}/rest/v1/user_progress?user_id=eq.${userId}&status=eq.completed&select=*`,
            {
                headers: {
                    'Authorization': `Bearer ${serviceRoleKey}`,
                    'apikey': serviceRoleKey
                }
            }
        );
        
        const progress = await progressResponse.json();
        const completedStages = progress.length;
        
        // Check for hint-free completion
        const hintFreeCompletions = progress.filter((p: any) => 
            p.hints_used && p.hints_used.length === 0
        ).length;
        
        const newBadges = [];
        
        // Badge 1: First Steps (1 stage)
        if (completedStages >= 1) {
            const badge = await awardBadge(userId, 1, supabaseUrl, serviceRoleKey);
            if (badge) newBadges.push(badge);
        }
        
        // Badge 5: Hint-Free Hero
        if (hintFreeCompletions >= 1) {
            const badge = await awardBadge(userId, 5, supabaseUrl, serviceRoleKey);
            if (badge) newBadges.push(badge);
        }
        
        // Badge 9: Persistent Learner (5 attempts)
        const persistentStages = progress.filter((p: any) => p.attempts >= 5);
        if (persistentStages.length >= 1) {
            const badge = await awardBadge(userId, 9, supabaseUrl, serviceRoleKey);
            if (badge) newBadges.push(badge);
        }
        
        return new Response(JSON.stringify({
            newBadges,
            totalBadges: newBadges.length
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

async function awardBadge(userId: string, badgeId: number, supabaseUrl: string, serviceRoleKey: string) {
    // Check if user already has this badge
    const existingResponse = await fetch(
        `${supabaseUrl}/rest/v1/user_badges?user_id=eq.${userId}&badge_id=eq.${badgeId}`,
        {
            headers: {
                'Authorization': `Bearer ${serviceRoleKey}`,
                'apikey': serviceRoleKey
            }
        }
    );
    
    const existing = await existingResponse.json();
    if (existing && existing.length > 0) {
        return null; // Already has badge
    }
    
    // Award badge
    const awardResponse = await fetch(
        `${supabaseUrl}/rest/v1/user_badges`,
        {
            method: 'POST',
            headers: {
                'Authorization': `Bearer ${serviceRoleKey}`,
                'apikey': serviceRoleKey,
                'Content-Type': 'application/json',
                'Prefer': 'return=representation'
            },
            body: JSON.stringify({
                user_id: userId,
                badge_id: badgeId
            })
        }
    );
    
    const badgeData = await awardResponse.json();
    
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
                activity_type: 'badge_earned',
                details: { badge_id: badgeId }
            })
        }
    );
    
    return badgeData[0];
}
