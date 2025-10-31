-- Migration: populate_modules_and_badges
-- Created at: 1761837499

-- Insert 12 Cybersecurity Modules
INSERT INTO modules (title, description, icon, difficulty, order_index, total_stages) VALUES
('Secret Message Detective', 'Master the art of cryptography by decoding secret messages using various encryption techniques', 'lock', 'Beginner', 1, 6),
('Password Guardian Academy', 'Learn password security, create strong passwords, and understand authentication best practices', 'key', 'Beginner', 2, 6),
('Email Detective Game', 'Identify phishing emails and social engineering attacks to protect against cyber threats', 'mail', 'Beginner', 3, 6),
('Network Security Analyst', 'Understand network protocols, analyze traffic, and secure network communications', 'network', 'Intermediate', 4, 6),
('Malware Hunter', 'Detect, analyze, and defend against various types of malicious software', 'bug', 'Intermediate', 5, 6),
('Firewall Specialist', 'Configure and manage firewalls to protect networks from unauthorized access', 'shield', 'Intermediate', 6, 6),
('Mobile Security Guardian', 'Secure mobile devices and applications against emerging mobile threats', 'smartphone', 'Intermediate', 7, 6),
('Cloud Security Architect', 'Design and implement secure cloud infrastructure and services', 'cloud', 'Advanced', 8, 6),
('Digital Forensics Investigator', 'Collect and analyze digital evidence to investigate security incidents', 'search', 'Advanced', 9, 6),
('Social Engineering Defense', 'Recognize and defend against psychological manipulation attacks', 'users', 'Advanced', 10, 6),
('Secure Coding Practices', 'Write secure code and prevent common vulnerabilities in applications', 'code', 'Advanced', 11, 6),
('Payment Security Expert', 'Protect financial transactions and implement secure payment systems', 'credit-card', 'Advanced', 12, 6);

-- Insert Achievement Badges
INSERT INTO badges (title, description, icon, criteria, category) VALUES
('First Steps', 'Complete your first challenge stage', 'star', 'Complete 1 stage', 'Progress'),
('Rising Star', 'Complete your first module', 'award', 'Complete 1 full module', 'Progress'),
('Knowledge Seeker', 'Complete 5 modules', 'book', 'Complete 5 modules', 'Progress'),
('Security Master', 'Complete all 12 modules', 'trophy', 'Complete all 12 modules', 'Achievement'),
('Hint-Free Hero', 'Complete a stage without using any hints', 'zap', 'Complete stage with no hints', 'Skill'),
('Perfect Score', 'Complete a module with full points on all stages', 'target', 'Full points on entire module', 'Achievement'),
('Speed Demon', 'Complete a stage in under 60 seconds', 'clock', 'Complete stage in <60s', 'Speed'),
('7-Day Streak', 'Practice for 7 consecutive days', 'flame', '7 day login streak', 'Consistency'),
('Persistent Learner', 'Attempt a stage 5 times before succeeding', 'repeat', '5 attempts on single stage', 'Determination'),
('Top 10 Player', 'Reach top 10 on the leaderboard', 'trending-up', 'Rank in top 10', 'Competition');;