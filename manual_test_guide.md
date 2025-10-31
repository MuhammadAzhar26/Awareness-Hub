# Manual Testing Guide for AwarenessHub Enhanced

## Deployment Information
- **New Deployment URL**: https://e0g1f6zo9uyn.space.minimax.io
- **Previous URL**: https://hkovktqqob6k.space.minimax.io (may still work)
- **Test Account**: lecjpjxt@minimax.com / test123456

## Automated Tests Passed ✓

### Infrastructure Tests
- [✓] Main page loads (HTTP 200)
- [✓] React app structure present
- [✓] Video files accessible (12 files in /videos/)
- [✓] Audio files accessible (12 files in /audio/)
- [✓] JavaScript bundle loads
- [✓] CSS bundle loads

### Database Tests
- [✓] Video URLs updated in modules table (8 modules)
- [✓] Interactive challenges configured (6 challenges)
- [✓] Challenge data present in JSONB format
- [✓] All challenge types have validation logic

## Manual Testing Required

Since automated browser testing tools are unavailable, please manually verify the following user flows:

### Test Flow 1: Authentication
1. Visit https://e0g1f6zo9uyn.space.minimax.io
2. Click "Sign In"
3. Enter: lecjpjxt@minimax.com / test123456
4. Verify dashboard loads with username displayed
5. Verify modules are displayed

**Expected**: User successfully logs in and sees personalized dashboard

### Test Flow 2: Matching Challenge (Module 3, Stage 2)
1. From dashboard, click "Email Detective Game" module (Module 3)
2. Click on "Stage 2: Urgent Action Required"
3. Verify matching interface displays:
   - Left column: TCP, UDP, HTTP, SSH
   - Right column: Shuffled definitions
4. Click "TCP" on left, then click its matching definition
5. Match all 4 pairs
6. Click "Submit Matches"
7. Verify success message appears
8. Verify points are awarded
9. Verify redirect back to module page

**Expected**: Matching interface works, answer validates, points awarded

### Test Flow 3: Scenario Challenge (Module 4, Stage 3)
1. Navigate to "Network Security Analyst" (Module 4)
2. Click "Stage 3: Protocol Analysis"
3. Verify scenario questions display with radio buttons
4. Select answers for both questions
5. Click "Submit Answers"
6. Verify feedback is provided

**Expected**: Scenario interface works, multiple questions, validation works

### Test Flow 4: Drag-Drop Challenge (Module 7, Stage 2)
1. Navigate to "Mobile Security Guardian" (Module 7)
2. Click "Stage 2: App Permission Analysis"
3. Verify drag-drop interface:
   - Items pool at bottom
   - Two drop zones at top
4. Drag items from pool to zones
5. Verify items can be moved between zones
6. Place all items
7. Click "Submit Categories"

**Expected**: Drag-drop works smoothly, items moveable, validation works

### Test Flow 5: Code Analysis Challenge (Module 9, Stage 3)
1. Navigate to "Digital Forensics Investigator" (Module 9)
2. Click "Stage 3: File System Analysis"
3. Verify code display:
   - Code with line numbers
   - Issue list below
   - Highlighted problem lines
4. Click to select security issues
5. Click "Submit Analysis"

**Expected**: Code displays correctly, issues selectable, validation works

### Test Flow 6: Traditional Text Challenge (Module 1, Stage 1)
1. Navigate to "Secret Message Detective" (Module 1)
2. Click "Stage 1: Caesar Cipher Basics"
3. Verify text input field
4. Enter: HELLO WORLD
5. Click "Submit"
6. Verify success message

**Expected**: Text input works, validation works, backward compatibility maintained

### Test Flow 7: Hint System
1. In any challenge, click "Hint 1"
2. Verify hint expands and displays
3. Verify point penalty is shown
4. Use hints and submit answer
5. Verify points deducted for hints used

**Expected**: Hints work, penalties apply correctly

### Test Flow 8: Video Access
1. Navigate to any module with video_url
2. Check if video player or link appears (implementation dependent)
3. Verify video file loads if clicked

**Expected**: Videos are accessible via their URLs

## Test Results

### Deployment Status: ✓ LIVE
- URL is accessible
- All static assets load correctly
- Database configured correctly

### Backend Status: ✓ CONFIGURED
- Edge function updated and deployed
- Database schema updated
- Challenge data populated
- Video URLs set

### Frontend Status: ✓ BUILT & DEPLOYED
- React components created
- Challenge types implemented
- Build successful (654KB JS bundle)
- Deployed to production

## Known Limitations
- Automated browser testing not available in environment
- Manual verification required for interactive elements
- Video player UI may need enhancement (files are hosted)

## If Issues Found

### Common Issues and Fixes

**Issue**: Challenge interface doesn't display
**Fix**: Check browser console for errors, verify Supabase connection

**Issue**: Video files don't load
**Fix**: Videos are at /videos/*.mp4, check network tab

**Issue**: Submission doesn't work
**Fix**: Check edge function logs in Supabase dashboard

**Issue**: Points don't update
**Fix**: Verify user_profiles table has correct user_id

## Database Verification Queries

```sql
-- Check interactive challenges
SELECT id, module_id, stage_number, title, challenge_type 
FROM stages 
WHERE challenge_type IN ('matching', 'scenario', 'drag-drop', 'code-analysis');

-- Check video URLs
SELECT id, title, video_url FROM modules WHERE video_url IS NOT NULL;

-- Check user progress
SELECT * FROM user_progress WHERE user_id = 'YOUR_USER_ID' ORDER BY completed_at DESC;
```

## Edge Function Testing

Test the submit-answer function directly:
```bash
curl -X POST https://jglhhlximslbdnwjaclm.supabase.co/functions/v1/submit-answer \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"stageId": 14, "answer": "tcp:tcp,udp:udp,http:http,ssh:ssh", "hintsUsed": [], "timeSpent": 30}'
```

Should return: `{"correct": true, "points_earned": 60, "message": "Correct! Well done!"}`

