-- Migration: populate_tool_modules
-- Created at: 1761840159

-- Insert 12 Cybersecurity Tools Training Modules
INSERT INTO tool_modules (title, category, description, difficulty, video_url, audio_url, icon, order_index, total_stages) VALUES
('Wireshark Mastery', 'Network Analysis', 'Master network packet analysis with Wireshark for traffic monitoring and troubleshooting', 'Beginner', '/videos/wireshark_tutorial.mp4', '/audio/wireshark_narration.mp3', 'network', 1, 6),
('Nmap Scanning Techniques', 'Network Analysis', 'Learn port scanning, host discovery, and network mapping with Nmap', 'Beginner', '/videos/nmap_tutorial.mp4', '/audio/nmap_narration.mp3', 'radar', 2, 6),
('Metasploit Framework', 'Penetration Testing', 'Comprehensive penetration testing with Metasploit exploitation framework', 'Intermediate', '/videos/metasploit_tutorial.mp4', '/audio/metasploit_narration.mp3', 'shield-alert', 3, 6),
('Burp Suite Pro', 'Penetration Testing', 'Web application security testing with Burp Suite professional tools', 'Intermediate', '/videos/burp_suite_tutorial.mp4', '/audio/burp_suite_narration.mp3', 'globe', 4, 6),
('Nessus Scanner', 'Vulnerability Assessment', 'Automated vulnerability scanning and assessment with Nessus', 'Intermediate', '/videos/nessus_tutorial.mp4', '/audio/nessus_narration.mp3', 'search-check', 5, 6),
('OpenVAS Security', 'Vulnerability Assessment', 'Open-source vulnerability assessment with OpenVAS', 'Intermediate', '/videos/openvas_tutorial.mp4', '/audio/openvas_narration.mp3', 'shield-check', 6, 6),
('Autopsy Forensics', 'Digital Forensics', 'Digital forensics investigation using Autopsy platform', 'Advanced', '/videos/autopsy_tutorial.mp4', '/audio/autopsy_narration.mp3', 'file-search', 7, 6),
('Volatility Framework', 'Digital Forensics', 'Memory forensics analysis with Volatility framework', 'Advanced', '/videos/volatility_tutorial.mp4', '/audio/volatility_narration.mp3', 'cpu', 8, 6),
('John the Ripper', 'Password Security', 'Password cracking and auditing with John the Ripper', 'Intermediate', '/videos/john_ripper_tutorial.mp4', '/audio/john_ripper_narration.mp3', 'key-round', 9, 6),
('Hashcat Advanced', 'Password Security', 'GPU-accelerated password recovery with Hashcat', 'Advanced', '/videos/hashcat_tutorial.mp4', '/audio/hashcat_narration.mp3', 'hash', 10, 6),
('Kali Linux Toolkit', 'Security Tools', 'Comprehensive Kali Linux penetration testing toolkit overview', 'Beginner', '/videos/kali_linux_tutorial.mp4', '/audio/kali_linux_narration.mp3', 'terminal', 11, 6),
('Security Tools Integration', 'Security Tools', 'Integrating multiple security tools for comprehensive assessments', 'Advanced', '/videos/security_tools_overview.mp4', '/audio/security_tools_overview_narration.mp3', 'layers', 12, 6);;