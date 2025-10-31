-- Migration: populate_dfir_modules
-- Created at: 1761840165

-- Insert 8 DFIR Education Modules
INSERT INTO dfir_modules (title, description, difficulty, video_url, audio_url, icon, order_index, total_stages) VALUES
('Incident Response Fundamentals', 'Master the foundational principles of incident response and cyber crisis management', 'Beginner', '/videos/dfir_ir_fundamentals.mp4', '/audio/dfir_ir_fundamentals.mp3', 'alert-triangle', 1, 6),
('Digital Evidence Collection', 'Learn proper techniques for collecting and preserving digital evidence', 'Beginner', '/videos/dfir_evidence_collection.mp4', '/audio/dfir_evidence_collection.mp3', 'folder-lock', 2, 6),
('Memory Forensics Investigation', 'Analyze volatile memory to uncover malware and attack indicators', 'Intermediate', '/videos/dfir_memory_forensics.mp4', '/audio/dfir_memory_forensics.mp3', 'brain', 3, 6),
('File System Analysis', 'Deep dive into file system forensics and data recovery techniques', 'Intermediate', '/videos/dfir_file_system.mp4', '/audio/dfir_file_system.mp3', 'hard-drive', 4, 6),
('Malware Analysis Techniques', 'Static and dynamic malware analysis methodologies', 'Advanced', '/videos/dfir_malware_analysis.mp4', '/audio/dfir_malware_analysis.mp3', 'bug-off', 5, 6),
('Threat Hunting Methodologies', 'Proactive threat hunting strategies and investigation techniques', 'Advanced', '/videos/dfir_threat_hunting.mp4', '/audio/dfir_threat_hunting.mp3', 'crosshair', 6, 6),
('Chain of Custody Procedures', 'Legal requirements and best practices for evidence handling', 'Intermediate', '/videos/dfir_chain_custody.mp4', '/audio/dfir_chain_custody.mp3', 'file-check', 7, 6),
('Court-Ready Forensic Reports', 'Create professional forensic reports for legal proceedings', 'Advanced', '/videos/dfir_forensic_reports.mp4', '/audio/dfir_forensic_reports.mp3', 'file-text', 8, 6);;