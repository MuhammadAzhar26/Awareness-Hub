-- Migration: enable_rls_new_tables
-- Created at: 1761840128

-- Enable RLS on new tables
ALTER TABLE tool_modules ENABLE ROW LEVEL SECURITY;
ALTER TABLE dfir_modules ENABLE ROW LEVEL SECURITY;
ALTER TABLE tool_stages ENABLE ROW LEVEL SECURITY;
ALTER TABLE dfir_stages ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_tool_progress ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_dfir_progress ENABLE ROW LEVEL SECURITY;
ALTER TABLE certifications ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_certifications ENABLE ROW LEVEL SECURITY;

-- Public read access for modules and stages
CREATE POLICY "Anyone can view tool modules" ON tool_modules FOR SELECT USING (true);
CREATE POLICY "Anyone can view dfir modules" ON dfir_modules FOR SELECT USING (true);
CREATE POLICY "Anyone can view tool stages" ON tool_stages FOR SELECT USING (true);
CREATE POLICY "Anyone can view dfir stages" ON dfir_stages FOR SELECT USING (true);
CREATE POLICY "Anyone can view certifications" ON certifications FOR SELECT USING (true);

-- User-specific progress access
CREATE POLICY "Users can view their tool progress" ON user_tool_progress FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "Users can insert their tool progress" ON user_tool_progress FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Users can update their tool progress" ON user_tool_progress FOR UPDATE USING (auth.uid() = user_id);

CREATE POLICY "Users can view their dfir progress" ON user_dfir_progress FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "Users can insert their dfir progress" ON user_dfir_progress FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Users can update their dfir progress" ON user_dfir_progress FOR UPDATE USING (auth.uid() = user_id);

CREATE POLICY "Users can view their certifications" ON user_certifications FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "Users can earn certifications" ON user_certifications FOR INSERT WITH CHECK (auth.uid() = user_id);;