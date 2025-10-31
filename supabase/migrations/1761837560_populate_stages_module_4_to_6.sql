-- Migration: populate_stages_module_4_to_6
-- Created at: 1761837560

-- Module 4: Network Security Analyst - 6 stages
INSERT INTO stages (module_id, stage_number, title, description, scenario, challenge_type, correct_answer, points) VALUES
(4, 1, 'TCP Handshake', 'Identify TCP three-way handshake steps', 'What is the correct order? A) SYN, ACK, SYN-ACK B) SYN, SYN-ACK, ACK C) ACK, SYN, SYN-ACK', 'text', 'B', 50),
(4, 2, 'Port Scanning Detection', 'Identify suspicious port scans', 'You see sequential connection attempts to ports 20-100 from single IP. What type of scan?', 'text', 'port scan', 75),
(4, 3, 'Protocol Analysis', 'Identify the protocol by port number', 'Network traffic on port 443. What protocol is this?', 'text', 'HTTPS', 100),
(4, 4, 'IP Address Classification', 'Identify private IP range', 'Which is a private IP address? A) 8.8.8.8 B) 192.168.1.1 C) 74.125.224.72', 'text', 'B', 125),
(4, 5, 'ARP Spoofing Detection', 'Recognize ARP poisoning attack', 'Same MAC address claiming multiple IP addresses in ARP table. What attack?', 'text', 'ARP spoofing', 150),
(4, 6, 'DNS Tunneling', 'Identify DNS data exfiltration', 'Excessive DNS queries with long subdomain names (>50 chars). What attack vector?', 'text', 'DNS tunneling', 200);

-- Module 5: Malware Hunter - 6 stages
INSERT INTO stages (module_id, stage_number, title, description, scenario, challenge_type, correct_answer, points) VALUES
(5, 1, 'Malware Types', 'Classify malware by behavior', 'Software that encrypts files and demands payment. What type?', 'text', 'ransomware', 50),
(5, 2, 'Virus vs Worm', 'Distinguish between virus and worm', 'Self-replicating malware that spreads without user action. Virus or Worm?', 'text', 'worm', 75),
(5, 3, 'Trojan Detection', 'Identify Trojan horse characteristics', 'Legitimate-looking game that installs backdoor. What type of malware?', 'text', 'trojan', 100),
(5, 4, 'Rootkit Indicators', 'Recognize rootkit presence', 'Hidden processes, modified system files, disabled security tools. What malware type?', 'text', 'rootkit', 125),
(5, 5, 'Polymorphic Malware', 'Understand evasion techniques', 'Malware that changes its code signature with each infection. What technique?', 'text', 'polymorphic', 150),
(5, 6, 'APT Analysis', 'Identify Advanced Persistent Threat characteristics', 'Long-term, stealthy, targeted attack with multiple stages. What type of threat?', 'text', 'APT', 200);

-- Module 6: Firewall Specialist - 6 stages
INSERT INTO stages (module_id, stage_number, title, description, scenario, challenge_type, correct_answer, points) VALUES
(6, 1, 'Firewall Basics', 'Understand firewall purpose', 'Primary function of a firewall? (filter, encrypt, or authenticate)', 'text', 'filter', 50),
(6, 2, 'Default Deny Policy', 'Apply security best practice', 'Secure firewall policy: Allow all and block specific, or Deny all and allow specific?', 'text', 'deny all', 75),
(6, 3, 'Stateful vs Stateless', 'Distinguish firewall types', 'Firewall that tracks connection state and context. What type?', 'text', 'stateful', 100),
(6, 4, 'DMZ Configuration', 'Design network segmentation', 'Where should you place a public web server? Internal network or DMZ?', 'text', 'DMZ', 125),
(6, 5, 'Rule Ordering', 'Configure firewall rules correctly', 'If Rule 1: Allow all from 10.0.0.0/8, Rule 2: Deny 10.0.0.5. Is 10.0.0.5 allowed?', 'text', 'yes', 150),
(6, 6, 'Next-Gen Firewall', 'Identify advanced firewall features', 'Firewall that includes IPS, application awareness, and deep packet inspection. What type?', 'text', 'NGFW', 200);;