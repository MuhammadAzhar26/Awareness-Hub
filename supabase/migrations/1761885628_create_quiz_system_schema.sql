-- Migration: create_quiz_system_schema
-- Created at: 1761885628

-- Create quiz system tables

-- Quizzes table: stores quiz metadata for each stage
CREATE TABLE IF NOT EXISTS quizzes (
  id SERIAL PRIMARY KEY,
  tool_stage_id INTEGER REFERENCES tool_stages(id) ON DELETE CASCADE,
  dfir_stage_id INTEGER REFERENCES dfir_stages(id) ON DELETE CASCADE,
  trigger_timestamp INTEGER NOT NULL, -- Timestamp in seconds when quiz appears
  trigger_percentage INTEGER NOT NULL, -- Percentage of video (0-100) when quiz appears
  points INTEGER DEFAULT 15,
  difficulty TEXT CHECK (difficulty IN ('easy', 'medium', 'hard')),
  created_at TIMESTAMP DEFAULT NOW(),
  CONSTRAINT quiz_stage_check CHECK (
    (tool_stage_id IS NOT NULL AND dfir_stage_id IS NULL) OR
    (tool_stage_id IS NULL AND dfir_stage_id IS NOT NULL)
  )
);

-- Quiz questions table: stores individual questions
CREATE TABLE IF NOT EXISTS quiz_questions (
  id SERIAL PRIMARY KEY,
  quiz_id INTEGER REFERENCES quizzes(id) ON DELETE CASCADE,
  question_text TEXT NOT NULL,
  question_type TEXT NOT NULL CHECK (question_type IN ('multiple_choice', 'fill_blank', 'drag_drop')),
  question_data JSONB NOT NULL, -- Stores options, zones, items depending on type
  correct_answer JSONB NOT NULL, -- Stores correct answer(s)
  explanation TEXT,
  points INTEGER DEFAULT 10,
  order_index INTEGER DEFAULT 1,
  created_at TIMESTAMP DEFAULT NOW()
);

-- Quiz responses table: tracks user answers
CREATE TABLE IF NOT EXISTS quiz_responses (
  id SERIAL PRIMARY KEY,
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
  quiz_id INTEGER REFERENCES quizzes(id) ON DELETE CASCADE,
  question_id INTEGER REFERENCES quiz_questions(id) ON DELETE CASCADE,
  user_answer JSONB NOT NULL,
  is_correct BOOLEAN NOT NULL,
  time_spent INTEGER, -- Time in seconds
  points_earned INTEGER DEFAULT 0,
  created_at TIMESTAMP DEFAULT NOW(),
  UNIQUE(user_id, question_id)
);

-- Transcripts table: stores guided transcripts for videos
CREATE TABLE IF NOT EXISTS video_transcripts (
  id SERIAL PRIMARY KEY,
  tool_stage_id INTEGER REFERENCES tool_stages(id) ON DELETE CASCADE,
  dfir_stage_id INTEGER REFERENCES dfir_stages(id) ON DELETE CASCADE,
  start_time INTEGER NOT NULL, -- Start time in seconds
  end_time INTEGER NOT NULL, -- End time in seconds
  section_title TEXT NOT NULL,
  content TEXT NOT NULL, -- Markdown formatted content
  code_examples JSONB, -- Array of code blocks with language and content
  order_index INTEGER DEFAULT 1,
  created_at TIMESTAMP DEFAULT NOW(),
  CONSTRAINT transcript_stage_check CHECK (
    (tool_stage_id IS NOT NULL AND dfir_stage_id IS NULL) OR
    (tool_stage_id IS NULL AND dfir_stage_id IS NOT NULL)
  )
);

-- Create indexes for performance
CREATE INDEX idx_quizzes_tool_stage ON quizzes(tool_stage_id);
CREATE INDEX idx_quizzes_dfir_stage ON quizzes(dfir_stage_id);
CREATE INDEX idx_quiz_questions_quiz ON quiz_questions(quiz_id);
CREATE INDEX idx_quiz_responses_user ON quiz_responses(user_id);
CREATE INDEX idx_quiz_responses_quiz ON quiz_responses(quiz_id);
CREATE INDEX idx_transcripts_tool_stage ON video_transcripts(tool_stage_id);
CREATE INDEX idx_transcripts_dfir_stage ON video_transcripts(dfir_stage_id);

-- Enable RLS
ALTER TABLE quizzes ENABLE ROW LEVEL SECURITY;
ALTER TABLE quiz_questions ENABLE ROW LEVEL SECURITY;
ALTER TABLE quiz_responses ENABLE ROW LEVEL SECURITY;
ALTER TABLE video_transcripts ENABLE ROW LEVEL SECURITY;

-- RLS Policies for quizzes (public read)
CREATE POLICY "Anyone can view quizzes"
  ON quizzes FOR SELECT
  USING (true);

CREATE POLICY "Anyone can view quiz questions"
  ON quiz_questions FOR SELECT
  USING (true);

-- RLS Policies for quiz_responses (users can only access their own)
CREATE POLICY "Users can view own responses"
  ON quiz_responses FOR SELECT
  USING (auth.uid() = user_id);

CREATE POLICY "Users can insert own responses"
  ON quiz_responses FOR INSERT
  WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update own responses"
  ON quiz_responses FOR UPDATE
  USING (auth.uid() = user_id);

-- RLS Policies for transcripts (public read)
CREATE POLICY "Anyone can view transcripts"
  ON video_transcripts FOR SELECT
  USING (true);;