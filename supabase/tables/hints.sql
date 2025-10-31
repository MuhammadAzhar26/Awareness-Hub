CREATE TABLE hints (
    id SERIAL PRIMARY KEY,
    stage_id INT NOT NULL,
    hint_number INT NOT NULL,
    hint_text TEXT NOT NULL,
    penalty_points INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);