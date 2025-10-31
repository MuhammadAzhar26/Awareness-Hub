CREATE TABLE stages (
    id SERIAL PRIMARY KEY,
    module_id INT NOT NULL,
    stage_number INT NOT NULL,
    title TEXT NOT NULL,
    description TEXT,
    scenario TEXT,
    challenge_type TEXT,
    correct_answer TEXT,
    points INT DEFAULT 50,
    created_at TIMESTAMP DEFAULT NOW()
);