-- Migration: populate_stages_module_10_to_12
-- Created at: 1761837611

-- Module 10: Social Engineering Defense - 6 stages
INSERT INTO stages (module_id, stage_number, title, description, scenario, challenge_type, correct_answer, points) VALUES
(10, 1, 'Pretexting Attack', 'Identify manipulation technique', 'Attacker creates fabricated scenario to extract information. What technique?', 'text', 'pretexting', 50),
(10, 2, 'Baiting Attack', 'Recognize physical social engineering', 'USB drive labeled "Executive Salaries" left in parking lot. What attack?', 'text', 'baiting', 75),
(10, 3, 'Tailgating', 'Identify physical security breach', 'Unauthorized person following employee through secure door. What is this called?', 'text', 'tailgating', 100),
(10, 4, 'Authority Exploitation', 'Recognize psychological manipulation', 'Attacker impersonates CEO to pressure employee to transfer funds. What principle exploited?', 'text', 'authority', 125),
(10, 5, 'Quid Pro Quo', 'Identify exchange-based attack', 'Fake IT support offering help in exchange for login credentials. What attack?', 'text', 'quid pro quo', 150),
(10, 6, 'Scarcity Tactic', 'Recognize urgency manipulation', 'Limited time offer creates pressure to act quickly without thinking. What principle?', 'text', 'scarcity', 200);

-- Module 11: Secure Coding Practices - 6 stages
INSERT INTO stages (module_id, stage_number, title, description, scenario, challenge_type, correct_answer, points) VALUES
(11, 1, 'SQL Injection', 'Identify database vulnerability', 'User input directly concatenated into SQL query. What vulnerability?', 'text', 'SQL injection', 50),
(11, 2, 'XSS Prevention', 'Prevent cross-site scripting', 'Best practice to prevent XSS: Filter input or Encode output?', 'text', 'encode output', 75),
(11, 3, 'CSRF Protection', 'Defend against cross-site request forgery', 'Random token included with each form submission. What protection is this?', 'text', 'CSRF token', 100),
(11, 4, 'Input Validation', 'Apply secure input handling', 'Validate on client-side, server-side, or both?', 'text', 'both', 125),
(11, 5, 'Secure Password Storage', 'Protect user credentials', 'Industry standard for password hashing: bcrypt, MD5, or SHA1?', 'text', 'bcrypt', 150),
(11, 6, 'API Security', 'Implement secure API design', 'Mechanism to control API access rate and prevent abuse. What is this?', 'text', 'rate limiting', 200);

-- Module 12: Payment Security Expert - 6 stages
INSERT INTO stages (module_id, stage_number, title, description, scenario, challenge_type, correct_answer, points) VALUES
(12, 1, 'PCI DSS Basics', 'Understand payment card security standard', 'Security standard for organizations handling credit cards. What acronym?', 'text', 'PCI DSS', 50),
(12, 2, 'Card Not Present Fraud', 'Identify online payment risk', 'Transaction without physical card. What type of fraud risk?', 'text', 'CNP', 75),
(12, 3, 'Tokenization', 'Protect payment data', 'Replacing card number with surrogate value. What security technique?', 'text', 'tokenization', 100),
(12, 4, 'EMV Chip Security', 'Understand chip card technology', 'Dynamic authentication value for each transaction. What technology?', 'text', 'EMV', 125),
(12, 5, '3D Secure', 'Implement additional authentication', 'Additional verification layer for online card payments. What protocol?', 'text', '3D Secure', 150),
(12, 6, 'Payment Gateway Security', 'Secure transaction processing', 'Encrypted connection between merchant and payment processor. What protocol?', 'text', 'TLS', 200);;