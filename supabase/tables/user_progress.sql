CREATE TABLE user_progress (
    id SERIAL PRIMARY KEY,
    user_id UUID NOT NULL,
    stage_id INT NOT NULL,
    status TEXT DEFAULT 'locked',
    attempts INT DEFAULT 0,
    hints_used JSONB DEFAULT '[]',
    points_earned INT DEFAULT 0,
    completed_at TIMESTAMP,
    time_spent INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);