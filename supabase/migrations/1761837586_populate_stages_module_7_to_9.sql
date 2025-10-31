-- Migration: populate_stages_module_7_to_9
-- Created at: 1761837586

-- Module 7: Mobile Security Guardian - 6 stages
INSERT INTO stages (module_id, stage_number, title, description, scenario, challenge_type, correct_answer, points) VALUES
(7, 1, 'Mobile OS Security', 'Compare mobile operating systems', 'Which mobile OS uses sandboxing to isolate apps? Both, Android, or iOS?', 'text', 'both', 50),
(7, 2, 'App Permission Analysis', 'Identify excessive permissions', 'Flashlight app requests: Camera, Location, Contacts, Storage. Which is suspicious?', 'text', 'contacts', 75),
(7, 3, 'Mobile Malware', 'Recognize mobile-specific threats', 'Malware that sends premium SMS messages without user knowledge. What type?', 'text', 'SMS trojan', 100),
(7, 4, 'BYOD Risk', 'Understand Bring Your Own Device risks', 'Personal device accessing corporate email. Main security concern? (data leakage, battery, or speed)', 'text', 'data leakage', 125),
(7, 5, 'Mobile Device Management', 'Apply MDM security controls', 'Remote wipe capability is feature of what security solution?', 'text', 'MDM', 150),
(7, 6, 'Mobile App Security', 'Identify secure coding practices', 'Storing passwords in plain text in mobile app. What vulnerability?', 'text', 'insecure storage', 200);

-- Module 8: Cloud Security Architect - 6 stages
INSERT INTO stages (module_id, stage_number, title, description, scenario, challenge_type, correct_answer, points) VALUES
(8, 1, 'Cloud Service Models', 'Identify cloud service types', 'You manage OS and applications, provider manages infrastructure. What model?', 'text', 'IaaS', 50),
(8, 2, 'Shared Responsibility', 'Understand cloud security responsibility', 'In SaaS, who is responsible for data security? Provider, Customer, or Both?', 'text', 'customer', 75),
(8, 3, 'Cloud Storage Security', 'Identify misconfiguration risk', 'S3 bucket with public read access containing sensitive data. What issue?', 'text', 'misconfiguration', 100),
(8, 4, 'IAM Best Practice', 'Apply identity and access management', 'Cloud security principle: Grant minimum access needed. What principle?', 'text', 'least privilege', 125),
(8, 5, 'Cloud Encryption', 'Implement data protection', 'Encrypting data before uploading to cloud. What type of encryption?', 'text', 'client-side', 150),
(8, 6, 'Multi-Tenancy Risk', 'Understand cloud isolation', 'Multiple customers sharing same physical infrastructure. What security concern?', 'text', 'data isolation', 200);

-- Module 9: Digital Forensics Investigator - 6 stages
INSERT INTO stages (module_id, stage_number, title, description, scenario, challenge_type, correct_answer, points) VALUES
(9, 1, 'Chain of Custody', 'Maintain evidence integrity', 'Documented chronological record of evidence handling. What is this called?', 'text', 'chain of custody', 50),
(9, 2, 'Volatile Data', 'Identify evidence preservation priority', 'RAM contents, logs, or hard drive - what is most volatile?', 'text', 'RAM', 75),
(9, 3, 'File System Analysis', 'Recover deleted files', 'Space where deleted file data remains until overwritten. What is this called?', 'text', 'unallocated space', 100),
(9, 4, 'Log Analysis', 'Investigate security incident', 'Multiple failed login attempts followed by successful login. What attack pattern?', 'text', 'brute force', 125),
(9, 5, 'Steganography Detection', 'Find hidden data', 'Data hidden within image files. What technique?', 'text', 'steganography', 150),
(9, 6, 'Timeline Analysis', 'Reconstruct attack sequence', 'Correlating timestamps from multiple sources to establish event order. What analysis?', 'text', 'timeline', 200);;