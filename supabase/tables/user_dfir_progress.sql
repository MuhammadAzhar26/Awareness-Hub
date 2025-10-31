CREATE TABLE user_dfir_progress (
    id SERIAL PRIMARY KEY,
    user_id UUID NOT NULL,
    dfir_stage_id INT NOT NULL,
    status TEXT DEFAULT 'locked',
    video_completed BOOLEAN DEFAULT false,
    case_completed BOOLEAN DEFAULT false,
    challenge_completed BOOLEAN DEFAULT false,
    points_earned INT DEFAULT 0,
    completed_at TIMESTAMP,
    time_spent INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);