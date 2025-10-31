CREATE TABLE user_profiles (
    id UUID PRIMARY KEY,
    username TEXT NOT NULL UNIQUE,
    level INT DEFAULT 1,
    total_points INT DEFAULT 0,
    avatar_url TEXT,
    bio TEXT,
    member_since TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);