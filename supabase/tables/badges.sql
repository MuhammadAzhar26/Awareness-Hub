CREATE TABLE badges (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT,
    icon TEXT,
    criteria TEXT,
    category TEXT,
    created_at TIMESTAMP DEFAULT NOW()
);