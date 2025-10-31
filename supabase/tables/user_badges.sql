CREATE TABLE user_badges (
    id SERIAL PRIMARY KEY,
    user_id UUID NOT NULL,
    badge_id INT NOT NULL,
    earned_at TIMESTAMP DEFAULT NOW()
);