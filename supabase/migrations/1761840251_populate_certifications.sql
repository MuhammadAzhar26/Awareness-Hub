-- Migration: populate_certifications
-- Created at: 1761840251

-- Insert Certifications
INSERT INTO certifications (title, description, category, icon, criteria, points_required) VALUES
('Wireshark Certified Analyst', 'Master network packet analysis with Wireshark', 'Network Analysis', 'award', 'Complete all 6 Wireshark stages', 660),
('Nmap Reconnaissance Expert', 'Expert in network scanning and reconnaissance', 'Network Analysis', 'award', 'Complete all 6 Nmap stages', 660),
('Metasploit Penetration Tester', 'Certified in exploitation framework usage', 'Penetration Testing', 'shield', 'Complete all 6 Metasploit stages', 660),
('Web Security Professional', 'Burp Suite web application testing expert', 'Penetration Testing', 'globe', 'Complete all 6 Burp Suite stages', 660),
('Vulnerability Assessment Specialist', 'Certified vulnerability scanner operator', 'Vulnerability Assessment', 'search', 'Complete Nessus and OpenVAS modules', 1320),
('Digital Forensics Investigator', 'Forensics investigation certification', 'Digital Forensics', 'file-search', 'Complete Autopsy and Volatility modules', 1320),
('Password Security Expert', 'Advanced password auditing certification', 'Password Security', 'key', 'Complete John and Hashcat modules', 1320),
('Security Tools Master', 'Comprehensive security toolkit proficiency', 'Security Tools', 'layers', 'Complete Kali Linux and Integration modules', 1320),
('Incident Response Professional', 'DFIR incident response certification', 'DFIR', 'alert-triangle', 'Complete IR Fundamentals module', 660),
('Memory Forensics Analyst', 'Memory analysis and investigation expert', 'DFIR', 'brain', 'Complete Memory Forensics module', 660),
('DFIR Master Certification', 'Complete DFIR practitioner certification', 'DFIR', 'trophy', 'Complete all 8 DFIR modules', 5280);;