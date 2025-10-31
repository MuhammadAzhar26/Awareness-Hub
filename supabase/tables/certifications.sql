CREATE TABLE certifications (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT,
    category TEXT NOT NULL,
    icon TEXT,
    criteria TEXT,
    points_required INT,
    created_at TIMESTAMP DEFAULT NOW()
);