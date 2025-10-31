-- Migration: remove_quiz_system_add_mcq_questions
-- Created at: 1761887964


-- Drop quiz system tables
DROP TABLE IF EXISTS quiz_responses CASCADE;
DROP TABLE IF EXISTS quiz_questions CASCADE;
DROP TABLE IF EXISTS quizzes CASCADE;
DROP TABLE IF EXISTS video_transcripts CASCADE;

-- Create stage_questions table for MCQ questions at bottom of stage
CREATE TABLE stage_questions (
    id SERIAL PRIMARY KEY,
    tool_stage_id INTEGER REFERENCES tool_stages(id) ON DELETE CASCADE,
    dfir_stage_id INTEGER REFERENCES dfir_stages(id) ON DELETE CASCADE,
    question_text TEXT NOT NULL,
    question_type VARCHAR(20) DEFAULT 'mcq' CHECK (question_type = 'mcq'),
    options JSONB NOT NULL,
    correct_option VARCHAR(10) NOT NULL,
    difficulty VARCHAR(20) DEFAULT 'basic' CHECK (difficulty IN ('basic', 'advanced')),
    explanation TEXT,
    points INTEGER DEFAULT 10,
    order_index INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT NOW()
);

-- Create user_answers table to track MCQ submissions
CREATE TABLE user_answers (
    id SERIAL PRIMARY KEY,
    user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
    question_id INTEGER REFERENCES stage_questions(id) ON DELETE CASCADE,
    selected_option VARCHAR(10) NOT NULL,
    is_correct BOOLEAN DEFAULT FALSE,
    time_spent INTEGER,
    points_earned INTEGER DEFAULT 0,
    answered_at TIMESTAMP DEFAULT NOW(),
    UNIQUE(user_id, question_id)
);

-- Create walkthroughs table for comprehensive tool guides
CREATE TABLE walkthroughs (
    id SERIAL PRIMARY KEY,
    tool_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL CHECK (category IN ('installation', 'commands', 'scenarios', 'advanced', 'troubleshooting')),
    title TEXT NOT NULL,
    content TEXT NOT NULL,
    code_examples JSONB,
    order_index INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT NOW()
);

-- Create indexes for performance
CREATE INDEX idx_stage_questions_tool ON stage_questions(tool_stage_id);
CREATE INDEX idx_stage_questions_dfir ON stage_questions(dfir_stage_id);
CREATE INDEX idx_user_answers_user ON user_answers(user_id);
CREATE INDEX idx_user_answers_question ON user_answers(question_id);
CREATE INDEX idx_walkthroughs_tool ON walkthroughs(tool_name);
CREATE INDEX idx_walkthroughs_category ON walkthroughs(category);

-- Enable RLS
ALTER TABLE stage_questions ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_answers ENABLE ROW LEVEL SECURITY;
ALTER TABLE walkthroughs ENABLE ROW LEVEL SECURITY;

-- RLS Policies for stage_questions (public read, admin write)
CREATE POLICY "Anyone can view questions" ON stage_questions FOR SELECT USING (true);

-- RLS Policies for user_answers (users can manage their own)
CREATE POLICY "Users can view own answers" ON user_answers FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "Users can insert own answers" ON user_answers FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Users can update own answers" ON user_answers FOR UPDATE USING (auth.uid() = user_id);

-- RLS Policies for walkthroughs (public read)
CREATE POLICY "Anyone can view walkthroughs" ON walkthroughs FOR SELECT USING (true);
;