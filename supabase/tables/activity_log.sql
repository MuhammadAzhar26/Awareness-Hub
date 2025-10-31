CREATE TABLE activity_log (
    id SERIAL PRIMARY KEY,
    user_id UUID NOT NULL,
    activity_type TEXT NOT NULL,
    details JSONB DEFAULT '{}',
    created_at TIMESTAMP DEFAULT NOW()
);