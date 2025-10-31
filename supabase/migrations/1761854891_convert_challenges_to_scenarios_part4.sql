-- Migration: convert_challenges_to_scenarios_part4
-- Created at: 1761854891

-- Module 9-12: Forensics, Social Engineering, Secure Coding, Payment Security (Stages 49-72)

-- Module 9: Digital Forensics Investigator
UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "First step when investigating compromised system:",
      "options": [
        {"id": "isolate", "text": "Isolate system from network to preserve evidence"},
        {"id": "reboot", "text": "Reboot to clear issues"},
        {"id": "antivirus", "text": "Run antivirus scan"},
        {"id": "delete_files", "text": "Delete suspicious files"}
      ]
    }],
    "correctChoice": "isolate"
  }'::jsonb
WHERE id = 49;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Chain of custody in digital forensics means:",
      "options": [
        {"id": "document_evidence", "text": "Document who handled evidence and when"},
        {"id": "encrypt_files", "text": "Encrypt all files"},
        {"id": "delete_logs", "text": "Delete unnecessary logs"},
        {"id": "share_findings", "text": "Share findings publicly"}
      ]
    }],
    "correctChoice": "document_evidence"
  }'::jsonb
WHERE id = 50;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "File deleted and emptied from Recycle Bin. Is it recoverable?",
      "options": [
        {"id": "yes_forensic", "text": "YES - Using forensic tools before overwritten"},
        {"id": "no_permanent", "text": "NO - Permanently deleted"},
        {"id": "maybe_lucky", "text": "Maybe if you are lucky"},
        {"id": "yes_backup", "text": "YES - Always in cloud backup"}
      ]
    }],
    "correctChoice": "yes_forensic"
  }'::jsonb
WHERE id = 51;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Metadata in document reveals:",
      "options": [
        {"id": "author_dates_edits", "text": "Author name, creation date, edit history"},
        {"id": "password", "text": "Document password"},
        {"id": "virus", "text": "Virus signatures"},
        {"id": "file_size", "text": "File size only"}
      ]
    }],
    "correctChoice": "author_dates_edits"
  }'::jsonb
WHERE id = 52;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Log analysis shows repeated failed login attempts from same IP. This indicates:",
      "options": [
        {"id": "brute_force", "text": "Brute force attack attempt"},
        {"id": "user_forgot", "text": "User forgot password"},
        {"id": "system_error", "text": "System error"},
        {"id": "normal", "text": "Normal activity"}
      ]
    }],
    "correctChoice": "brute_force"
  }'::jsonb
WHERE id = 53;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Memory (RAM) forensics advantage:",
      "options": [
        {"id": "capture_volatile", "text": "Captures volatile data like passwords, encryption keys"},
        {"id": "permanent", "text": "Stores data permanently"},
        {"id": "faster", "text": "Faster than disk analysis"},
        {"id": "easier", "text": "Easier to analyze"}
      ]
    }],
    "correctChoice": "capture_volatile"
  }'::jsonb
WHERE id = 54;

-- Module 10: Social Engineering Defense
UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Caller claims to be IT support, asks for password to fix issue. You should:",
      "options": [
        {"id": "refuse_verify", "text": "Refuse and verify through official channels"},
        {"id": "provide", "text": "Provide password to resolve issue"},
        {"id": "partial", "text": "Give partial password"},
        {"id": "later", "text": "Ask to call back later"}
      ]
    }],
    "correctChoice": "refuse_verify"
  }'::jsonb
WHERE id = 55;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Stranger follows employee into secure building without badge (tailgating). Action:",
      "options": [
        {"id": "challenge_report", "text": "Politely challenge and report to security"},
        {"id": "ignore", "text": "Ignore, not your problem"},
        {"id": "assume_employee", "text": "Assume they are an employee"},
        {"id": "hold_door", "text": "Hold door to be polite"}
      ]
    }],
    "correctChoice": "challenge_report"
  }'::jsonb
WHERE id = 56;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Email urgently requests wire transfer from CEO. Unusual language. Verify by:",
      "options": [
        {"id": "call_verify", "text": "Call CEO directly using known number"},
        {"id": "reply_email", "text": "Reply to the email"},
        {"id": "process_immediately", "text": "Process immediately due to urgency"},
        {"id": "forward", "text": "Forward to accounting"}
      ]
    }],
    "correctChoice": "call_verify"
  }'::jsonb
WHERE id = 57;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Pretexting attack means attacker:",
      "options": [
        {"id": "fabricates_scenario", "text": "Fabricates scenario to extract information"},
        {"id": "sends_malware", "text": "Sends malware attachments"},
        {"id": "ddos", "text": "Launches DDoS attack"},
        {"id": "encrypts_files", "text": "Encrypts files for ransom"}
      ]
    }],
    "correctChoice": "fabricates_scenario"
  }'::jsonb
WHERE id = 58;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Baiting attack typically involves:",
      "options": [
        {"id": "infected_usb", "text": "Leaving infected USB drives for victims to find"},
        {"id": "email", "text": "Sending phishing emails"},
        {"id": "phone_call", "text": "Making phone calls"},
        {"id": "website", "text": "Fake websites"}
      ]
    }],
    "correctChoice": "infected_usb"
  }'::jsonb
WHERE id = 59;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Quid pro quo attack offers:",
      "options": [
        {"id": "service_for_info", "text": "Service/benefit in exchange for information"},
        {"id": "money", "text": "Free money"},
        {"id": "software", "text": "Free software"},
        {"id": "nothing", "text": "Nothing"}
      ]
    }],
    "correctChoice": "service_for_info"
  }'::jsonb
WHERE id = 60;

-- Module 11: Secure Coding Practices
UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "SQL Injection vulnerability occurs when:",
      "options": [
        {"id": "unsanitized_input", "text": "User input directly concatenated into SQL queries"},
        {"id": "wrong_password", "text": "Using wrong database password"},
        {"id": "slow_query", "text": "Database query is too slow"},
        {"id": "missing_index", "text": "Missing database index"}
      ]
    }],
    "correctChoice": "unsanitized_input"
  }'::jsonb
WHERE id = 61;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Cross-Site Scripting (XSS) attack allows:",
      "options": [
        {"id": "inject_script", "text": "Injecting malicious scripts into web pages"},
        {"id": "sql_injection", "text": "SQL injection"},
        {"id": "ddos", "text": "DDoS attacks"},
        {"id": "encryption", "text": "Breaking encryption"}
      ]
    }],
    "correctChoice": "inject_script"
  }'::jsonb
WHERE id = 62;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Buffer overflow vulnerability caused by:",
      "options": [
        {"id": "writing_beyond", "text": "Writing data beyond allocated memory buffer"},
        {"id": "slow_code", "text": "Slow code execution"},
        {"id": "memory_leak", "text": "Memory leak"},
        {"id": "missing_variable", "text": "Missing variable"}
      ]
    }],
    "correctChoice": "writing_beyond"
  }'::jsonb
WHERE id = 63;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "CSRF (Cross-Site Request Forgery) protection method:",
      "options": [
        {"id": "csrf_token", "text": "Use anti-CSRF tokens in forms"},
        {"id": "https", "text": "Use HTTPS only"},
        {"id": "strong_password", "text": "Require strong passwords"},
        {"id": "captcha", "text": "Add CAPTCHA everywhere"}
      ]
    }],
    "correctChoice": "csrf_token"
  }'::jsonb
WHERE id = 64;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Storing passwords securely requires:",
      "options": [
        {"id": "hash_salt", "text": "Hashing with salt (bcrypt, Argon2)"},
        {"id": "plaintext", "text": "Plaintext for easy recovery"},
        {"id": "simple_hash", "text": "Simple MD5 hash"},
        {"id": "encoding", "text": "Base64 encoding"}
      ]
    }],
    "correctChoice": "hash_salt"
  }'::jsonb
WHERE id = 65;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Input validation best practice:",
      "options": [
        {"id": "whitelist", "text": "Whitelist allowed characters/patterns"},
        {"id": "blacklist", "text": "Blacklist dangerous patterns only"},
        {"id": "trust_input", "text": "Trust all user input"},
        {"id": "no_validation", "text": "Skip validation for speed"}
      ]
    }],
    "correctChoice": "whitelist"
  }'::jsonb
WHERE id = 66;

-- Module 12: Payment Security Expert
UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "PCI DSS (Payment Card Industry Data Security Standard) requires:",
      "options": [
        {"id": "protect_cardholder", "text": "Protect cardholder data with encryption"},
        {"id": "store_cvv", "text": "Store CVV codes"},
        {"id": "share_data", "text": "Share card data with partners"},
        {"id": "plaintext_storage", "text": "Store cards in plaintext"}
      ]
    }],
    "correctChoice": "protect_cardholder"
  }'::jsonb
WHERE id = 67;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Tokenization in payment processing means:",
      "options": [
        {"id": "replace_sensitive", "text": "Replace sensitive card data with token"},
        {"id": "cryptocurrency", "text": "Using cryptocurrency"},
        {"id": "discount_codes", "text": "Discount code system"},
        {"id": "reward_points", "text": "Reward points"}
      ]
    }],
    "correctChoice": "replace_sensitive"
  }'::jsonb
WHERE id = 68;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "3D Secure (3DS) authentication adds:",
      "options": [
        {"id": "extra_verification", "text": "Extra verification layer with bank"},
        {"id": "3d_graphics", "text": "3D graphics to payment page"},
        {"id": "faster_payment", "text": "Faster payment processing"},
        {"id": "lower_fees", "text": "Lower transaction fees"}
      ]
    }],
    "correctChoice": "extra_verification"
  }'::jsonb
WHERE id = 69;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Chargeback fraud occurs when:",
      "options": [
        {"id": "false_claim", "text": "Customer falsely claims non-receipt after receiving goods"},
        {"id": "merchant_error", "text": "Merchant makes billing error"},
        {"id": "bank_error", "text": "Bank processing error"},
        {"id": "system_glitch", "text": "System glitch"}
      ]
    }],
    "correctChoice": "false_claim"
  }'::jsonb
WHERE id = 70;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "CVV (Card Verification Value) should:",
      "options": [
        {"id": "never_store", "text": "NEVER be stored after transaction"},
        {"id": "store_encrypted", "text": "Be stored encrypted"},
        {"id": "store_database", "text": "Be stored in database"},
        {"id": "share_partners", "text": "Be shared with partners"}
      ]
    }],
    "correctChoice": "never_store"
  }'::jsonb
WHERE id = 71;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "End-to-end encryption (E2EE) in payment apps means:",
      "options": [
        {"id": "encrypted_throughout", "text": "Data encrypted from customer to payment processor"},
        {"id": "partial_encryption", "text": "Partial encryption only"},
        {"id": "no_encryption", "text": "No encryption needed"},
        {"id": "merchant_only", "text": "Merchant side only"}
      ]
    }],
    "correctChoice": "encrypted_throughout"
  }'::jsonb
WHERE id = 72;;