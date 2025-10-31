-- Migration: populate_stages_module_1_to_3
-- Created at: 1761837533

-- Module 1: Secret Message Detective (Cryptography) - 6 stages
INSERT INTO stages (module_id, stage_number, title, description, scenario, challenge_type, correct_answer, points) VALUES
(1, 1, 'Caesar Cipher Basics', 'Decode a message encrypted with Caesar cipher', 'You intercepted a message: KHOOR ZRUOG. The shift value is 3. What is the original message?', 'text', 'HELLO WORLD', 50),
(1, 2, 'ROT13 Challenge', 'Decrypt a ROT13 encoded message', 'An agent sent you: FRPERG ZRRG NG ZVQAVTUG. Decode this message using ROT13.', 'text', 'SECRET MEET AT MIDNIGHT', 75),
(1, 3, 'Base64 Decoder', 'Decode a Base64 encoded string', 'You found this encoded string: U2VjdXJpdHlGaXJzdA==. What does it say?', 'text', 'SecurityFirst', 100),
(1, 4, 'XOR Cipher', 'Decrypt a simple XOR cipher', 'Message: 1A 0E 1C with XOR key: 42. What is the decoded text? (Hint: Convert hex to ASCII after XOR)', 'text', 'XYZ', 125),
(1, 5, 'Substitution Cipher', 'Break a substitution cipher using frequency analysis', 'Encrypted: MJQQT BJEWK HMHPXMX. Pattern analysis shows this is a simple substitution. Common word at start?', 'text', 'HELLO WORLD SECURITY', 150),
(1, 6, 'Multi-Layer Encryption', 'Decode a message with multiple encryption layers', 'First decode Base64: SGVsbG8gU2VjdXJpdHk=, then apply ROT13 to result.', 'text', 'Uryyb Frphevgl', 200);

-- Module 2: Password Guardian Academy - 6 stages
INSERT INTO stages (module_id, stage_number, title, description, scenario, challenge_type, correct_answer, points) VALUES
(2, 1, 'Weak Password Detection', 'Identify the weakest password', 'Which is the weakest password? A) P@ssw0rd! B) MyDog123 C) xK9#mZ2$pL4 D) password', 'text', 'D', 50),
(2, 2, 'Password Strength Meter', 'Calculate password strength score', 'Password: abc123. How many common weak patterns does this have? (short length, common sequence, no special chars, no uppercase)', 'text', '4', 75),
(2, 3, 'Brute Force Time', 'Calculate time to crack a password', 'An 8-character password with only lowercase letters: how many possible combinations? (26^8)', 'text', '208827064576', 100),
(2, 4, 'Dictionary Attack Defense', 'Identify dictionary attack vulnerability', 'Password: Summer2024. Why is this vulnerable to dictionary attacks? Answer with one word.', 'text', 'predictable', 125),
(2, 5, 'Hash Recognition', 'Identify the hash algorithm', 'This hash: 5d41402abc4b2a76b9719d911017c592. Is it MD5, SHA1, or SHA256?', 'text', 'MD5', 150),
(2, 6, 'Secure Password Policy', 'Design a secure password policy', 'Minimum password length for enterprise security (NIST recommendation 2024)?', 'text', '8', 200);

-- Module 3: Email Detective Game (Phishing) - 6 stages
INSERT INTO stages (module_id, stage_number, title, description, scenario, challenge_type, correct_answer, points) VALUES
(3, 1, 'Suspicious Sender', 'Identify fake sender address', 'Email from: support@amaz0n-security.com. What is wrong? (misspelling/lookalike)', 'text', 'lookalike', 50),
(3, 2, 'Urgent Action Required', 'Recognize urgency tactics', 'Subject: URGENT! Account will be closed in 24 hours. This is an example of what phishing tactic?', 'text', 'urgency', 75),
(3, 3, 'Link Analysis', 'Examine suspicious links', 'Display text: www.paypal.com, but href="http://paypa1.com/login". What attack is this?', 'text', 'homograph', 100),
(3, 4, 'Attachment Risk', 'Identify dangerous file types', 'Email attachment: invoice.pdf.exe. What is the real file type?', 'text', 'exe', 125),
(3, 5, 'Email Header Analysis', 'Analyze email headers for spoofing', 'Return-Path: hacker@evil.com but From: ceo@company.com. What attack indicator is this?', 'text', 'spoofing', 150),
(3, 6, 'Spear Phishing Detection', 'Identify targeted phishing attempt', 'Email mentions your recent project by name and asks for credentials. What type of attack?', 'text', 'spear phishing', 200);;