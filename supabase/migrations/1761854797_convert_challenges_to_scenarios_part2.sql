-- Migration: convert_challenges_to_scenarios_part2
-- Created at: 1761854797

-- Module 4-5: Network Security & Malware (Stages 19-30)

-- Module 4: Network Security Analyst
UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "TCP Three-Way Handshake sequence is:",
      "options": [
        {"id": "syn_synack_ack", "text": "SYN → SYN-ACK → ACK"},
        {"id": "ack_syn_synack", "text": "ACK → SYN → SYN-ACK"},
        {"id": "syn_ack_synack", "text": "SYN → ACK → SYN-ACK"},
        {"id": "synack_syn_ack", "text": "SYN-ACK → SYN → ACK"}
      ]
    }],
    "correctChoice": "syn_synack_ack"
  }'::jsonb
WHERE id = 19;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Scanner connects to multiple ports rapidly without completing handshakes. This is:",
      "options": [
        {"id": "syn_scan", "text": "SYN scan (half-open scan)"},
        {"id": "connect_scan", "text": "Connect scan (full connection)"},
        {"id": "udp_scan", "text": "UDP scan"},
        {"id": "ping_scan", "text": "Ping scan"}
      ]
    }],
    "correctChoice": "syn_scan"
  }'::jsonb
WHERE id = 20;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Packet shows: Source Port 443, Destination Port 52341, [PSH, ACK]. What is happening?",
      "options": [
        {"id": "https_response", "text": "HTTPS server sending data to client"},
        {"id": "https_request", "text": "Client requesting HTTPS page"},
        {"id": "attack", "text": "Port scan attack"},
        {"id": "ddos", "text": "DDoS attack"}
      ]
    }],
    "correctChoice": "https_response"
  }'::jsonb
WHERE id = 21;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Best defense against Man-in-the-Middle (MITM) attacks?",
      "options": [
        {"id": "encryption_cert", "text": "Use encryption with certificate validation"},
        {"id": "firewall", "text": "Install a firewall"},
        {"id": "antivirus", "text": "Use antivirus software"},
        {"id": "password", "text": "Use strong passwords"}
      ]
    }],
    "correctChoice": "encryption_cert"
  }'::jsonb
WHERE id = 22;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "ARP spoofing allows attacker to:",
      "options": [
        {"id": "intercept", "text": "Intercept network traffic by posing as gateway"},
        {"id": "crack_wifi", "text": "Crack WiFi passwords"},
        {"id": "ddos", "text": "Launch DDoS attacks"},
        {"id": "malware", "text": "Install malware remotely"}
      ]
    }],
    "correctChoice": "intercept"
  }'::jsonb
WHERE id = 23;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "DNS query for ''example.com'' returns IP ''203.0.113.42''. How to verify it is correct?",
      "options": [
        {"id": "dnssec", "text": "Check DNSSEC signatures for validation"},
        {"id": "ping", "text": "Ping the IP address"},
        {"id": "traceroute", "text": "Run traceroute"},
        {"id": "browser", "text": "Open in browser to test"}
      ]
    }],
    "correctChoice": "dnssec"
  }'::jsonb
WHERE id = 24;

-- Module 5: Malware Hunter
UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "File encrypts your documents and demands Bitcoin payment. This is:",
      "options": [
        {"id": "ransomware", "text": "Ransomware"},
        {"id": "trojan", "text": "Trojan"},
        {"id": "worm", "text": "Worm"},
        {"id": "spyware", "text": "Spyware"}
      ]
    }],
    "correctChoice": "ransomware"
  }'::jsonb
WHERE id = 25;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Program appears as ''game.exe'' but secretly installs backdoor. This is:",
      "options": [
        {"id": "trojan", "text": "Trojan Horse"},
        {"id": "virus", "text": "Virus"},
        {"id": "worm", "text": "Worm"},
        {"id": "rootkit", "text": "Rootkit"}
      ]
    }],
    "correctChoice": "trojan"
  }'::jsonb
WHERE id = 26;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Malware spreads automatically across network without user action. This is:",
      "options": [
        {"id": "worm", "text": "Worm (self-replicating)"},
        {"id": "virus", "text": "Virus (needs host file)"},
        {"id": "trojan", "text": "Trojan"},
        {"id": "adware", "text": "Adware"}
      ]
    }],
    "correctChoice": "worm"
  }'::jsonb
WHERE id = 27;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Malware hides at OS kernel level, making detection difficult. This is:",
      "options": [
        {"id": "rootkit", "text": "Rootkit (kernel-level stealth)"},
        {"id": "trojan", "text": "Trojan"},
        {"id": "spyware", "text": "Spyware"},
        {"id": "adware", "text": "Adware"}
      ]
    }],
    "correctChoice": "rootkit"
  }'::jsonb
WHERE id = 28;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Best practice for analyzing suspicious files?",
      "options": [
        {"id": "sandbox", "text": "Use isolated sandbox environment"},
        {"id": "personal", "text": "Open on personal computer"},
        {"id": "double_click", "text": "Double-click to examine"},
        {"id": "email", "text": "Email to colleagues for review"}
      ]
    }],
    "correctChoice": "sandbox"
  }'::jsonb
WHERE id = 29;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "File hash ''abc123...''. What does matching hash in malware database indicate?",
      "options": [
        {"id": "known_malware", "text": "File is known malware - DO NOT EXECUTE"},
        {"id": "safe", "text": "File is safe to use"},
        {"id": "unknown", "text": "File is unknown"},
        {"id": "encrypted", "text": "File is encrypted"}
      ]
    }],
    "correctChoice": "known_malware"
  }'::jsonb
WHERE id = 30;;