-- Migration: upgrade_to_advanced_interactive_components
-- Created at: 1761855222

-- Strategic upgrade: Replace generic scenarios with advanced interactive components

-- Module 1: Cryptography - Caesar Cipher with interactive slider
UPDATE stages SET 
  challenge_type = 'caesar-cipher',
  challenge_data = '{
    "plaintext": "HELLO WORLD",
    "correctShift": 5
  }'::jsonb
WHERE id = 1;

-- Module 2: Password Security - Interactive password builder
UPDATE stages SET 
  challenge_type = 'password-builder',
  challenge_data = '{
    "minStrength": 70,
    "requiresLength": 12
  }'::jsonb
WHERE id = 8;

UPDATE stages SET 
  challenge_type = 'password-builder',
  challenge_data = '{
    "minStrength": 80,
    "requiresLength": 14
  }'::jsonb
WHERE id = 12;

-- Module 3: Phishing - Email Detective with clickable clues
UPDATE stages SET 
  challenge_type = 'email-detective',
  challenge_data = '{
    "emailContent": {
      "from": "support@paypa1.com",
      "subject": "Urgent: Verify Your Account",
      "body": "Dear Customer, Your account will be suspended unless you verify immediately. Click here to verify."
    },
    "clues": [
      {"id": "domain_typo", "text": "Domain: paypa1.com (not paypal.com)", "location": "Sender address", "isCorrect": true},
      {"id": "urgency", "text": "Urgent language: Account will be suspended", "location": "Email body", "isCorrect": true},
      {"id": "generic", "text": "Generic greeting: Dear Customer", "location": "Email salutation", "isCorrect": true},
      {"id": "legitimate_logo", "text": "Professional company logo", "location": "Email header", "isCorrect": false},
      {"id": "https_link", "text": "Link uses HTTPS protocol", "location": "Email body", "isCorrect": false}
    ],
    "correctClueIds": ["domain_typo", "urgency", "generic"],
    "requiredClues": 3
  }'::jsonb
WHERE id = 13;

-- Module 3: Link Safety with hover-to-reveal URLs
UPDATE stages SET 
  challenge_type = 'link-safety',
  challenge_data = '{
    "links": [
      {
        "id": "link1",
        "displayText": "www.paypal.com - Verify Account",
        "actualUrl": "http://paypa1.com/login.php",
        "isSafe": false,
        "warningSign": "Domain typosquatting: paypa1 vs paypal",
        "context": "Email: Your PayPal account needs verification"
      },
      {
        "id": "link2",
        "displayText": "Click here for your invoice",
        "actualUrl": "https://paypal.com/invoice/12345",
        "isSafe": true,
        "warningSign": "Legitimate PayPal domain with HTTPS",
        "context": "Email: Invoice #12345 from PayPal"
      },
      {
        "id": "link3",
        "displayText": "Download Security Update",
        "actualUrl": "http://192.168.1.1/update.exe",
        "isSafe": false,
        "warningSign": "IP address instead of domain + executable file",
        "context": "Email: Critical security update available"
      }
    ],
    "correctAnswers": ["link2"]
  }'::jsonb
WHERE id = 15;

-- Module 5: Malware Education - Interactive learning modules
UPDATE stages SET 
  challenge_type = 'malware-education',
  challenge_data = '{
    "malwareTypes": [
      {
        "id": "ransomware",
        "name": "Ransomware",
        "icon": "🔒",
        "description": "Encrypts files and demands payment",
        "howItWorks": "Ransomware encrypts victim files using strong cryptography and demands cryptocurrency payment for the decryption key",
        "examples": ["WannaCry", "CryptoLocker", "Ryuk"],
        "prevention": ["Regular backups stored offline", "Keep systems patched", "Email attachment caution", "Network segmentation"]
      },
      {
        "id": "trojan",
        "name": "Trojan Horse",
        "icon": "🐴",
        "description": "Disguises as legitimate software",
        "howItWorks": "Trojans masquerade as legitimate programs but contain malicious code that activates after installation",
        "examples": ["Zeus banking trojan", "Emotet", "Remote Access Trojans (RATs)"],
        "prevention": ["Download from official sources only", "Verify digital signatures", "Use antivirus", "Principle of least privilege"]
      },
      {
        "id": "worm",
        "name": "Worm",
        "icon": "🐛",
        "description": "Self-replicating across networks",
        "howItWorks": "Worms automatically spread across networks without user interaction, exploiting vulnerabilities",
        "examples": ["ILOVEYOU", "Code Red", "SQL Slammer"],
        "prevention": ["Keep systems patched", "Network firewalls", "IDS/IPS systems", "Disable unnecessary services"]
      }
    ],
    "requiredLearning": 3
  }'::jsonb
WHERE id = 25;

-- Module 5: Infection Signs - Interactive symptom identification
UPDATE stages SET 
  challenge_type = 'infection-signs',
  challenge_data = '{
    "signs": [
      {
        "id": "slow_performance",
        "symptom": "Computer running extremely slow",
        "description": "System takes much longer to boot and open applications",
        "severity": "high",
        "isActualSign": true,
        "explanation": "Malware consuming system resources can significantly slow down performance"
      },
      {
        "id": "popup_ads",
        "symptom": "Frequent popup ads even when browser is closed",
        "description": "Advertisements appearing outside of web browsing",
        "severity": "critical",
        "isActualSign": true,
        "explanation": "Adware or potentially unwanted programs (PUPs) are installed on the system"
      },
      {
        "id": "antivirus_disabled",
        "symptom": "Antivirus software disabled automatically",
        "description": "Security software turns off and cannot be restarted",
        "severity": "critical",
        "isActualSign": true,
        "explanation": "Malware actively disabling security software to avoid detection"
      },
      {
        "id": "windows_update",
        "symptom": "Windows update notification appears",
        "description": "Operating system prompting for security updates",
        "severity": "low",
        "isActualSign": false,
        "explanation": "Normal system behavior - updates are important for security"
      }
    ],
    "correctSigns": ["slow_performance", "popup_ads", "antivirus_disabled"],
    "minCorrectIdentifications": 3
  }'::jsonb
WHERE id = 29;

-- Module 6: Browser Security - Interactive security configurator
UPDATE stages SET 
  challenge_type = 'browser-security',
  challenge_data = '{
    "settings": [
      {
        "id": "block_popups",
        "name": "Block Pop-ups",
        "description": "Prevent websites from opening unwanted popup windows",
        "icon": "shield",
        "isSecure": true,
        "impact": "Blocks malicious popups and ads"
      },
      {
        "id": "https_only",
        "name": "HTTPS-Only Mode",
        "description": "Force all connections to use encrypted HTTPS",
        "icon": "lock",
        "isSecure": true,
        "impact": "Encrypts all web traffic"
      },
      {
        "id": "third_party_cookies",
        "name": "Block Third-Party Cookies",
        "description": "Prevent tracking cookies from external domains",
        "icon": "cookie",
        "isSecure": true,
        "impact": "Reduces cross-site tracking"
      },
      {
        "id": "save_passwords",
        "name": "Save All Passwords in Browser",
        "description": "Automatically save login credentials",
        "icon": "eye",
        "isSecure": false,
        "impact": "Convenience but security risk if compromised"
      }
    ],
    "correctSettings": ["block_popups", "https_only", "third_party_cookies"]
  }'::jsonb
WHERE id = 33;

-- Module 7: Privacy Settings - Interactive privacy configurator
UPDATE stages SET 
  challenge_type = 'privacy-settings',
  challenge_data = '{
    "privacyOptions": [
      {
        "id": "profile_visibility",
        "category": "Profile",
        "setting": "Who can see your profile?",
        "options": ["Everyone", "Friends only", "Only me"],
        "defaultOption": "Everyone",
        "recommendedOption": "Friends only",
        "description": "Control who can view your profile information and posts",
        "privacyImpact": "high"
      },
      {
        "id": "location_tracking",
        "category": "Location",
        "setting": "Location Services",
        "options": ["Always on", "While using app", "Never"],
        "defaultOption": "Always on",
        "recommendedOption": "While using app",
        "description": "Control when apps can access your location",
        "privacyImpact": "high"
      },
      {
        "id": "data_sharing",
        "category": "Data",
        "setting": "Share data with third parties?",
        "options": ["Allow all", "Limited sharing", "No sharing"],
        "defaultOption": "Allow all",
        "recommendedOption": "No sharing",
        "description": "Control if your data is shared with advertisers and partners",
        "privacyImpact": "high"
      }
    ]
  }'::jsonb
WHERE id = 41;

-- Module 9: Digital Footprint Cleanup
UPDATE stages SET 
  challenge_type = 'digital-footprint-cleanup',
  challenge_data = '{
    "footprints": [
      {
        "id": "old_social_post",
        "category": "social-media",
        "item": "Public post from 2015 with home address",
        "description": "Facebook post showing your home address and daily schedule",
        "riskLevel": "high",
        "shouldRemove": true
      },
      {
        "id": "professional_linkedin",
        "category": "social-media",
        "item": "LinkedIn professional profile",
        "description": "Work history and professional accomplishments",
        "riskLevel": "low",
        "shouldRemove": false
      },
      {
        "id": "location_history",
        "category": "location",
        "item": "Google Maps location history (5 years)",
        "description": "Detailed tracking of everywhere you have been",
        "riskLevel": "high",
        "shouldRemove": true
      },
      {
        "id": "old_account",
        "category": "accounts",
        "item": "Unused shopping account from 2010",
        "description": "Old account with outdated payment information",
        "riskLevel": "medium",
        "shouldRemove": true
      }
    ],
    "correctRemovals": ["old_social_post", "location_history", "old_account"]
  }'::jsonb
WHERE id = 51;

-- Module 10: Social Sharing Quiz
UPDATE stages SET 
  challenge_type = 'social-sharing-quiz',
  challenge_data = '{
    "scenarios": [
      {
        "id": "vacation_post",
        "content": "Posting ''Heading to Paris for 2 weeks! House will be empty!''",
        "contentType": "location",
        "context": "Planning to share vacation plans on Facebook",
        "isSafeToShare": false,
        "risks": ["Broadcasting empty home to potential burglars", "Real-time location disclosure", "Duration of absence revealed"],
        "safeAlternative": "Share vacation photos AFTER you return home"
      },
      {
        "id": "new_job",
        "content": "Just got hired at Tech Corp as Senior Developer!",
        "contentType": "work",
        "context": "Sharing career update on LinkedIn",
        "isSafeToShare": true,
        "risks": [],
        "safeAlternative": null
      },
      {
        "id": "credit_card_photo",
        "content": "Photo of new credit card with number visible",
        "contentType": "financial",
        "context": "Excited about new rewards card",
        "isSafeToShare": false,
        "risks": ["Card number exposed", "CVV potentially visible", "Identity theft risk"],
        "safeAlternative": "Never share financial instrument photos"
      }
    ],
    "correctAnswers": {
      "vacation_post": false,
      "new_job": true,
      "credit_card_photo": false
    }
  }'::jsonb
WHERE id = 57;

-- Module 10: Fake Profile Analysis
UPDATE stages SET 
  challenge_type = 'fake-profile-analysis',
  challenge_data = '{
    "profileData": {
      "username": "TechGenius2024",
      "bio": "CEO at Major Tech Company | Investment Expert | DM for opportunities",
      "joinDate": "Joined 3 days ago",
      "followerCount": "12 followers / 2,450 following",
      "photoDescription": "Stock photo of professional businessman"
    },
    "redFlags": [
      {
        "id": "new_account",
        "category": "Account Age",
        "indicator": "Account created only 3 days ago",
        "description": "Brand new account claiming to be CEO of major company",
        "severity": "high"
      },
      {
        "id": "follower_ratio",
        "category": "Followers",
        "indicator": "12 followers but following 2,450 accounts",
        "description": "Suspicious ratio indicates fake account mass-following",
        "severity": "high"
      },
      {
        "id": "stock_photo",
        "category": "Profile Photo",
        "indicator": "Using generic stock photo",
        "description": "Professional stock image rather than real personal photo",
        "severity": "medium"
      },
      {
        "id": "vague_claims",
        "category": "Content",
        "indicator": "Vague claims about position and expertise",
        "description": "CEO title without company name, generic investment claims",
        "severity": "high"
      }
    ],
    "correctFlags": ["new_account", "follower_ratio", "stock_photo", "vague_claims"],
    "minRequiredFlags": 3
  }'::jsonb
WHERE id = 59;;