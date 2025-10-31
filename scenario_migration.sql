-- Transform all text-based challenges to scenario-based challenges
-- Module 1: Cryptography CTF

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "A message encrypted with Caesar cipher shows: ''Mjqqt, Btwqi!'' What is the shift value used?",
      "options": [
        {"id": "shift3", "text": "Shift by 3"},
        {"id": "shift5", "text": "Shift by 5"},
        {"id": "shift7", "text": "Shift by 7"},
        {"id": "shift13", "text": "Shift by 13 (ROT13)"}
      ]
    }],
    "correctChoice": "shift5"
  }'::jsonb
WHERE id = 1;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Using ROT13, decode this message: ''Pelcgbtencul vf sha!''",
      "options": [
        {"id": "crypto", "text": "Cryptography is fun!"},
        {"id": "security", "text": "Security is important!"},
        {"id": "hacking", "text": "Hacking is great!"},
        {"id": "learning", "text": "Learning is key!"}
      ]
    }],
    "correctChoice": "crypto"
  }'::jsonb
WHERE id = 2;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Decode this Base64 string: ''U2VjdXJpdHlGbGFn''",
      "options": [
        {"id": "secflag", "text": "SecurityFlag"},
        {"id": "security", "text": "Security"},
        {"id": "encoded", "text": "EncodedData"},
        {"id": "base64", "text": "Base64Text"}
      ]
    }],
    "correctChoice": "secflag"
  }'::jsonb
WHERE id = 3;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "You have plaintext ''HELLO'' XORed with key ''K''. What technique reveals the plaintext?",
      "options": [
        {"id": "xor_key", "text": "XOR the ciphertext with the same key"},
        {"id": "reverse", "text": "Reverse the ciphertext string"},
        {"id": "shift", "text": "Apply Caesar cipher shift"},
        {"id": "hash", "text": "Hash the ciphertext"}
      ]
    }],
    "correctChoice": "xor_key"
  }'::jsonb
WHERE id = 4;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "A substitution cipher maps A→Z, B→Y, C→X. What type of cipher is this?",
      "options": [
        {"id": "atbash", "text": "Atbash cipher (reverse alphabet)"},
        {"id": "caesar", "text": "Caesar cipher"},
        {"id": "vigenere", "text": "Vigenere cipher"},
        {"id": "random", "text": "Random substitution"}
      ]
    }],
    "correctChoice": "atbash"
  }'::jsonb
WHERE id = 5;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Message is Base64 encoded, then Caesar shifted by 3. What is the decryption order?",
      "options": [
        {"id": "shift_base64", "text": "First un-shift Caesar, then decode Base64"},
        {"id": "base64_shift", "text": "First decode Base64, then un-shift Caesar"},
        {"id": "simultaneous", "text": "Decode both simultaneously"},
        {"id": "xor_first", "text": "Apply XOR before decoding"}
      ]
    }],
    "correctChoice": "shift_base64"
  }'::jsonb
WHERE id = 6;

-- Module 2: Password & Hash CTF

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Which password is the WEAKEST and easiest to crack?",
      "options": [
        {"id": "password123", "text": "password123"},
        {"id": "p@ssW0rd!", "text": "p@ssW0rd!"},
        {"id": "J8$mK2#qL9", "text": "J8$mK2#qL9"},
        {"id": "correct-horse-battery-staple", "text": "correct-horse-battery-staple"}
      ]
    }],
    "correctChoice": "password123"
  }'::jsonb
WHERE id = 7;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "A password has: 12 characters, uppercase, lowercase, numbers, symbols. What is its strength?",
      "options": [
        {"id": "weak", "text": "Weak (easily crackable)"},
        {"id": "moderate", "text": "Moderate (days to crack)"},
        {"id": "strong", "text": "Strong (years to crack)"},
        {"id": "very_strong", "text": "Very Strong (centuries to crack)"}
      ]
    }],
    "correctChoice": "very_strong"
  }'::jsonb
WHERE id = 8;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Password ''password'' with 8 chars, lowercase only. Brute force time with modern GPU?",
      "options": [
        {"id": "seconds", "text": "Less than 1 minute"},
        {"id": "hours", "text": "Several hours"},
        {"id": "days", "text": "Several days"},
        {"id": "months", "text": "Several months"}
      ]
    }],
    "correctChoice": "seconds"
  }'::jsonb
WHERE id = 9;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Best defense against dictionary attacks?",
      "options": [
        {"id": "common", "text": "Use common words with numbers"},
        {"id": "random", "text": "Use completely random characters"},
        {"id": "short", "text": "Use short passwords"},
        {"id": "personal", "text": "Use personal information"}
      ]
    }],
    "correctChoice": "random"
  }'::jsonb
WHERE id = 10;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Identify this hash: ''5f4dcc3b5aa765d61d8327deb882cf99''",
      "options": [
        {"id": "md5", "text": "MD5 hash"},
        {"id": "sha1", "text": "SHA-1 hash"},
        {"id": "sha256", "text": "SHA-256 hash"},
        {"id": "bcrypt", "text": "Bcrypt hash"}
      ]
    }],
    "correctChoice": "md5"
  }'::jsonb
WHERE id = 11;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "What makes a secure password policy?",
      "options": [
        {"id": "length_complexity", "text": "Minimum 12+ characters with complexity requirements"},
        {"id": "short_complex", "text": "8 characters with symbols"},
        {"id": "long_simple", "text": "20 characters, all lowercase"},
        {"id": "frequent_change", "text": "Change password every week"}
      ]
    }],
    "correctChoice": "length_complexity"
  }'::jsonb
WHERE id = 12;

-- Module 3: Phishing Detection

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Email from ''support@paypa1.com'' asks to verify account. What is the red flag?",
      "options": [
        {"id": "typo", "text": "Domain has typo: paypa1 instead of paypal"},
        {"id": "urgency", "text": "Urgent language"},
        {"id": "link", "text": "Contains a link"},
        {"id": "logo", "text": "Has company logo"}
      ]
    }],
    "correctChoice": "typo"
  }'::jsonb
WHERE id = 13;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Link displays ''www.paypal.com'' but actually links to ''http://paypa1.com/login''. This is:",
      "options": [
        {"id": "homograph", "text": "Homograph/Typosquatting attack"},
        {"id": "spoof", "text": "Link spoofing/Display text mismatch"},
        {"id": "phishing", "text": "Standard phishing"},
        {"id": "legitimate", "text": "Legitimate redirect"}
      ]
    }],
    "correctChoice": "spoof"
  }'::jsonb
WHERE id = 15;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Attachment named ''invoice.pdf.exe''. What is the REAL file type?",
      "options": [
        {"id": "exe", "text": "Executable (.exe) - Dangerous!"},
        {"id": "pdf", "text": "PDF document"},
        {"id": "zip", "text": "ZIP archive"},
        {"id": "txt", "text": "Text file"}
      ]
    }],
    "correctChoice": "exe"
  }'::jsonb
WHERE id = 16;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Email header shows: FROM ''support@bank.com'', but REPLY-TO ''hacker@evil.com''. What does this indicate?",
      "options": [
        {"id": "spoofed", "text": "Spoofed sender - replies go to attacker"},
        {"id": "forwarded", "text": "Forwarded email"},
        {"id": "legitimate", "text": "Normal email configuration"},
        {"id": "bounce", "text": "Bounce-back address"}
      ]
    }],
    "correctChoice": "spoofed"
  }'::jsonb
WHERE id = 17;

UPDATE stages SET 
  challenge_type = 'scenario',
  challenge_data = '{
    "sections": [{
      "question": "Receive email with personal details about your recent purchase. This targeted attack is called:",
      "options": [
        {"id": "spear", "text": "Spear phishing - Targeted with personal info"},
        {"id": "whaling", "text": "Whaling - CEO targeted"},
        {"id": "regular", "text": "Regular phishing"},
        {"id": "vishing", "text": "Vishing - Voice phishing"}
      ]
    }],
    "correctChoice": "spear"
  }'::jsonb
WHERE id = 18;

