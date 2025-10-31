-- Migration: enable_rls_and_policies
-- Created at: 1761837476

-- Enable RLS on all tables
ALTER TABLE user_profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE modules ENABLE ROW LEVEL SECURITY;
ALTER TABLE stages ENABLE ROW LEVEL SECURITY;
ALTER TABLE hints ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_progress ENABLE ROW LEVEL SECURITY;
ALTER TABLE badges ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_badges ENABLE ROW LEVEL SECURITY;
ALTER TABLE activity_log ENABLE ROW LEVEL SECURITY;

-- User Profiles: Users can read all profiles, but only update their own
CREATE POLICY "Users can view all profiles" ON user_profiles FOR SELECT USING (true);
CREATE POLICY "Users can insert their own profile" ON user_profiles FOR INSERT WITH CHECK (auth.uid() = id);
CREATE POLICY "Users can update their own profile" ON user_profiles FOR UPDATE USING (auth.uid() = id);

-- Modules: Everyone can read (public educational content)
CREATE POLICY "Anyone can view modules" ON modules FOR SELECT USING (true);

-- Stages: Everyone can read
CREATE POLICY "Anyone can view stages" ON stages FOR SELECT USING (true);

-- Hints: Everyone can read
CREATE POLICY "Anyone can view hints" ON hints FOR SELECT USING (true);

-- User Progress: Users can only see and manage their own progress
CREATE POLICY "Users can view their own progress" ON user_progress FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "Users can insert their own progress" ON user_progress FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Users can update their own progress" ON user_progress FOR UPDATE USING (auth.uid() = user_id);

-- Badges: Everyone can read
CREATE POLICY "Anyone can view badges" ON badges FOR SELECT USING (true);

-- User Badges: Users can view their own badges
CREATE POLICY "Users can view their own badges" ON user_badges FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "Users can earn badges" ON user_badges FOR INSERT WITH CHECK (auth.uid() = user_id);

-- Activity Log: Users can view their own activity
CREATE POLICY "Users can view their own activity" ON activity_log FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "Users can log their own activity" ON activity_log FOR INSERT WITH CHECK (auth.uid() = user_id);;