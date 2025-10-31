CREATE TABLE user_certifications (
    id SERIAL PRIMARY KEY,
    user_id UUID NOT NULL,
    certification_id INT NOT NULL,
    earned_at TIMESTAMP DEFAULT NOW(),
    certificate_url TEXT
);