-- Migration: convert_challenges_to_scenarios_part3
-- Created at: 1761854800

-- Module 6-8: Firewall, Mobile, Cloud Security (Stages 31-48)

-- Module 6: Firewall Specialist
UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Rule: DENY all incoming traffic on port 22. What does this block?",
      "options": [
        {"id": "ssh", "text": "SSH connections (port 22)"},
        {"id": "http", "text": "HTTP web traffic"},
        {"id": "https", "text": "HTTPS secure web"},
        {"id": "ftp", "text": "FTP file transfer"}
      ]
    }],
    "correctChoice": "ssh"
  }'::jsonb
WHERE id = 31;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "DMZ (Demilitarized Zone) is best used for:",
      "options": [
        {"id": "public_servers", "text": "Public-facing servers (web, email)"},
        {"id": "employee_computers", "text": "Employee computers"},
        {"id": "databases", "text": "Internal databases"},
        {"id": "backup", "text": "Backup systems"}
      ]
    }],
    "correctChoice": "public_servers"
  }'::jsonb
WHERE id = 32;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Stateful firewall advantage over stateless:",
      "options": [
        {"id": "tracks_connections", "text": "Tracks connection state and context"},
        {"id": "faster", "text": "Faster processing"},
        {"id": "cheaper", "text": "Lower cost"},
        {"id": "simpler", "text": "Simpler configuration"}
      ]
    }],
    "correctChoice": "tracks_connections"
  }'::jsonb
WHERE id = 33;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "IDS (Intrusion Detection System) vs IPS (Intrusion Prevention System):",
      "options": [
        {"id": "ids_alerts_ips_blocks", "text": "IDS alerts only, IPS actively blocks threats"},
        {"id": "same", "text": "They are the same"},
        {"id": "ips_alerts_ids_blocks", "text": "IPS alerts, IDS blocks"},
        {"id": "ids_faster", "text": "IDS is faster"}
      ]
    }],
    "correctChoice": "ids_alerts_ips_blocks"
  }'::jsonb
WHERE id = 34;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Best firewall rule ordering principle:",
      "options": [
        {"id": "specific_first", "text": "Most specific rules first, general rules last"},
        {"id": "general_first", "text": "General rules first"},
        {"id": "random", "text": "Random order"},
        {"id": "alphabetical", "text": "Alphabetical order"}
      ]
    }],
    "correctChoice": "specific_first"
  }'::jsonb
WHERE id = 35;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "VPN (Virtual Private Network) primary benefit:",
      "options": [
        {"id": "encrypted_tunnel", "text": "Creates encrypted tunnel for secure remote access"},
        {"id": "faster_internet", "text": "Makes internet faster"},
        {"id": "free_wifi", "text": "Provides free WiFi"},
        {"id": "more_storage", "text": "Increases storage space"}
      ]
    }],
    "correctChoice": "encrypted_tunnel"
  }'::jsonb
WHERE id = 36;

-- Module 7: Mobile Security Guardian
UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "App requests: Contacts, Camera, Microphone, Location. Red flag for a flashlight app?",
      "options": [
        {"id": "excessive", "text": "YES - Excessive permissions for flashlight"},
        {"id": "normal", "text": "Normal permissions"},
        {"id": "required", "text": "Required for functionality"},
        {"id": "optional", "text": "Optional, can be denied"}
      ]
    }],
    "correctChoice": "excessive"
  }'::jsonb
WHERE id = 37;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Unknown APK file from third-party website. Should you install?",
      "options": [
        {"id": "no_risky", "text": "NO - High malware risk from unofficial sources"},
        {"id": "yes_convenient", "text": "YES - Convenient to get apps"},
        {"id": "yes_free", "text": "YES - Free apps available"},
        {"id": "maybe", "text": "Maybe, if website looks legitimate"}
      ]
    }],
    "correctChoice": "no_risky"
  }'::jsonb
WHERE id = 38;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Public WiFi hotspot ''Free_Airport_WiFi'' appears. Best practice:",
      "options": [
        {"id": "verify_official", "text": "Verify with staff it is official network"},
        {"id": "connect_immediately", "text": "Connect immediately"},
        {"id": "share_password", "text": "Share the password"},
        {"id": "banking", "text": "Perfect for mobile banking"}
      ]
    }],
    "correctChoice": "verify_official"
  }'::jsonb
WHERE id = 39;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Lost phone with sensitive data. First action:",
      "options": [
        {"id": "remote_wipe", "text": "Remote wipe/lock via Find My Device"},
        {"id": "wait", "text": "Wait for someone to return it"},
        {"id": "post_social", "text": "Post on social media"},
        {"id": "nothing", "text": "Do nothing, buy new phone"}
      ]
    }],
    "correctChoice": "remote_wipe"
  }'::jsonb
WHERE id = 40;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Mobile device encryption protects:",
      "options": [
        {"id": "data_at_rest", "text": "Data stored on device if physically stolen"},
        {"id": "network_traffic", "text": "Network traffic only"},
        {"id": "app_crashes", "text": "Against app crashes"},
        {"id": "battery", "text": "Battery life"}
      ]
    }],
    "correctChoice": "data_at_rest"
  }'::jsonb
WHERE id = 41;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Jailbroken/Rooted device main security risk:",
      "options": [
        {"id": "bypass_security", "text": "Bypasses built-in security controls"},
        {"id": "faster", "text": "Makes device faster"},
        {"id": "more_apps", "text": "Access to more apps"},
        {"id": "customization", "text": "Better customization"}
      ]
    }],
    "correctChoice": "bypass_security"
  }'::jsonb
WHERE id = 42;

-- Module 8: Cloud Security Architect
UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "S3 bucket set to ''public-read''. What is the risk?",
      "options": [
        {"id": "data_leak", "text": "Anyone on internet can read your data"},
        {"id": "no_risk", "text": "No risk, standard configuration"},
        {"id": "faster", "text": "Makes access faster"},
        {"id": "cheaper", "text": "Reduces costs"}
      ]
    }],
    "correctChoice": "data_leak"
  }'::jsonb
WHERE id = 43;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "IAM (Identity and Access Management) principle of least privilege means:",
      "options": [
        {"id": "minimum_required", "text": "Grant only minimum permissions required"},
        {"id": "admin_all", "text": "Give admin access to everyone"},
        {"id": "no_access", "text": "Give no access to anyone"},
        {"id": "full_access", "text": "Full access for convenience"}
      ]
    }],
    "correctChoice": "minimum_required"
  }'::jsonb
WHERE id = 44;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Multi-factor authentication (MFA) for cloud console access:",
      "options": [
        {"id": "essential", "text": "Essential security requirement"},
        {"id": "optional", "text": "Optional, not necessary"},
        {"id": "inconvenient", "text": "Too inconvenient"},
        {"id": "slow", "text": "Slows down access"}
      ]
    }],
    "correctChoice": "essential"
  }'::jsonb
WHERE id = 45;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Cloud data encryption options:",
      "options": [
        {"id": "both", "text": "Encrypt data at rest AND in transit"},
        {"id": "rest_only", "text": "At rest only"},
        {"id": "transit_only", "text": "In transit only"},
        {"id": "not_needed", "text": "Encryption not needed in cloud"}
      ]
    }],
    "correctChoice": "both"
  }'::jsonb
WHERE id = 46;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Unusual CloudTrail log: API calls from unknown IP at 3 AM. Action:",
      "options": [
        {"id": "investigate_immediately", "text": "Investigate immediately for compromise"},
        {"id": "ignore", "text": "Ignore, probably normal"},
        {"id": "wait", "text": "Wait for more logs"},
        {"id": "disable", "text": "Disable CloudTrail logging"}
      ]
    }],
    "correctChoice": "investigate_immediately"
  }'::jsonb
WHERE id = 47;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Shared responsibility model in cloud:",
      "options": [
        {"id": "provider_infra_customer_data", "text": "Provider secures infrastructure, customer secures data/apps"},
        {"id": "provider_all", "text": "Provider responsible for everything"},
        {"id": "customer_all", "text": "Customer responsible for everything"},
        {"id": "no_responsibility", "text": "No one is responsible"}
      ]
    }],
    "correctChoice": "provider_infra_customer_data"
  }'::jsonb
WHERE id = 48;;