CREATE TABLE modules (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT,
    icon TEXT,
    difficulty TEXT,
    order_index INT,
    total_stages INT,
    created_at TIMESTAMP DEFAULT NOW()
);