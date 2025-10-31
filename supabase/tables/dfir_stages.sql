CREATE TABLE dfir_stages (
    id SERIAL PRIMARY KEY,
    dfir_module_id INT NOT NULL,
    stage_number INT NOT NULL,
    title TEXT NOT NULL,
    description TEXT,
    tutorial_content TEXT,
    video_url TEXT,
    audio_url TEXT,
    case_scenario TEXT,
    challenge_question TEXT,
    correct_answer TEXT,
    points INT DEFAULT 100,
    created_at TIMESTAMP DEFAULT NOW()
);