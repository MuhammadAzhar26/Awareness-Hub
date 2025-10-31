CREATE TABLE dfir_modules (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT,
    difficulty TEXT,
    video_url TEXT,
    audio_url TEXT,
    icon TEXT,
    order_index INT,
    total_stages INT DEFAULT 6,
    created_at TIMESTAMP DEFAULT NOW()
);