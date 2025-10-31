# AwarenessHub - User Acceptance Testing Guide

## Test Credentials
- **URL**: https://bqtiqx52ebgp.space.minimax.io
- **Username**: lecjpjxt@minimax.com
- **Password**: test123456

## Overview
AwarenessHub now features 13 different types of advanced interactive challenges across 12 cybersecurity modules, replacing the previous text-based input system.

---

## Testing Checklist

### Module 1: Secret Message Detective (Cryptography)
**Stage 1: Caesar Cipher Basics**
- [ ] **Component Type**: Interactive Caesar Cipher Slider
- [ ] Open Module 1, Stage 1
- [ ] Verify visual alphabet grid displays with shift indicators
- [ ] Use slider to adjust shift value
- [ ] Observe encrypted text updates in real-time
- [ ] Submit correct shift value (should be 5)
- [ ] Confirm points awarded and completion status

**Stages 2-6**: Scenario-based multiple choice
- [ ] Verify each stage shows clickable options
- [ ] Select answer and submit
- [ ] Confirm feedback displays correctly

---

### Module 2: Password Guardian Academy
**Stage 2: Password Strength Meter**
- [ ] **Component Type**: Interactive Password Builder
- [ ] Open Module 2, Stage 2
- [ ] Toggle character type categories (Uppercase, Lowercase, Numbers, Symbols)
- [ ] Observe live strength meter updates (Weak/Moderate/Strong)
- [ ] Build password meeting minimum strength (70%)
- [ ] Submit and verify completion

**Stage 6: Secure Password Policy**
- [ ] **Component Type**: Interactive Password Builder (higher requirements)
- [ ] Minimum strength: 80%
- [ ] Minimum length: 14 characters
- [ ] Test all character type toggles
- [ ] Verify strength calculation accuracy

---

### Module 3: Email Detective Game (Phishing)
**Stage 1: Suspicious Sender**
- [ ] **Component Type**: Email Detective with Clickable Clues
- [ ] View email content (from, subject, body)
- [ ] Click on suspicious elements to identify them
- [ ] Verify visual feedback (selected clues highlighted)
- [ ] Must identify at least 3 correct clues
- [ ] Clues to find: Domain typo (paypa1.com), Urgent language, Generic greeting
- [ ] Submit and confirm correct detection

**Stage 3: Link Analysis**
- [ ] **Component Type**: Link Safety - Hover to Reveal URLs
- [ ] Each link shows display text
- [ ] Click "Reveal Actual URL" button
- [ ] Examine actual destination vs display text
- [ ] Identify warning signs (typosquatting, IP addresses, suspicious protocols)
- [ ] Select SAFE links only
- [ ] Must reveal all links before submitting
- [ ] Verify correct: link2 (legitimate PayPal domain)

---

### Module 5: Malware Hunter
**Stage 1: Malware Types**
- [ ] **Component Type**: Malware Education - Expandable Learning Modules
- [ ] Click to expand each malware type (Ransomware, Trojan, Worm)
- [ ] Read: How It Works, Examples, Prevention tips
- [ ] Mark each type as "Learned" after reading
- [ ] Must learn at least 3 types
- [ ] Submit when required learning complete

**Stage 5: Analyzing Suspicious Files**
- [ ] **Component Type**: Infection Signs - Symptom Identification
- [ ] Review each system symptom
- [ ] Click to identify as infection sign
- [ ] Distinguish between malware symptoms and normal behavior
- [ ] Must correctly identify 3+ actual infection signs
- [ ] Correct signs: Slow performance, Popup ads, Antivirus disabled
- [ ] False sign: Windows update notification (normal behavior)

---

### Module 6: Firewall Specialist
**Stage 3: Stateful vs Stateless**
- [ ] **Component Type**: Browser Security Configurator
- [ ] Toggle security settings on/off
- [ ] Observe live security score calculation
- [ ] Enable recommended settings (Block popups, HTTPS-only, Block third-party cookies)
- [ ] Avoid enabling insecure settings (Save all passwords in browser)
- [ ] Verify score reaches 100% with correct configuration

---

### Module 7: Mobile Security Guardian
**Stage 5: Device Encryption**
- [ ] **Component Type**: Privacy Settings Configurator
- [ ] Configure privacy options for Profile, Location, Data sharing
- [ ] Each setting shows: Current, Recommended options
- [ ] Select recommended privacy-conscious options
- [ ] Observe privacy score calculation
- [ ] Must configure ALL settings before submitting
- [ ] Target: 80%+ privacy score

---

### Module 9: Digital Forensics Investigator
**Stage 3: File Recovery**
- [ ] **Component Type**: Digital Footprint Cleanup
- [ ] Review digital footprint items across categories
- [ ] Each item shows: Category, Description, Risk level
- [ ] Click "Remove This Item" to mark for deletion
- [ ] Visual feedback: Marked items show checkmark and "Marked for Removal"
- [ ] Identify high-risk items to remove
- [ ] Correct removals: Old social post with address, Location history, Unused old account
- [ ] Keep: Professional LinkedIn profile (low risk)
- [ ] Observe cleanup progress percentage

---

### Module 10: Social Engineering Defense
**Stage 3: CEO Fraud**
- [ ] **Component Type**: Social Sharing Quiz - Safe vs Risky Scenarios
- [ ] Review each sharing scenario (Vacation post, New job, Credit card photo)
- [ ] Context shows where/why posting
- [ ] Potential risks displayed for each
- [ ] Click "Safe to Share" or "Risky to Share" for each
- [ ] Must answer ALL scenarios before submitting
- [ ] Correct: Vacation post (risky), New job (safe), Credit card photo (risky)

**Stage 5: Baiting Attack**
- [ ] **Component Type**: Fake Profile Analysis
- [ ] Examine fake social media profile details
- [ ] Username, Bio, Join date, Follower count, Photo description
- [ ] Identify red flags indicating fake account
- [ ] Click to select each red flag
- [ ] Categories: Account age, Followers, Profile photo, Content
- [ ] Must identify minimum 3 red flags
- [ ] All 4 are correct: New account, Follower ratio, Stock photo, Vague claims

---

## Cross-Cutting Tests

### General Functionality
- [ ] **Navigation**: Back button returns to module overview
- [ ] **Hints System**: Hints reveal correctly when clicked
- [ ] **Hint Penalties**: Points deducted for using hints
- [ ] **Progress Tracking**: Completion status updates in real-time
- [ ] **Feedback Messages**: Success/error messages display clearly

### Dark Mode Consistency
- [ ] All interactive components use consistent dark backgrounds
- [ ] Text readable on dark backgrounds (neutral-100 on neutral-900)
- [ ] Hover states visible and responsive
- [ ] Selected states clearly distinguishable
- [ ] Buttons have proper contrast

### Mobile Responsiveness
- [ ] Test on mobile viewport (360px width)
- [ ] Interactive components adapt to smaller screens
- [ ] Touch targets adequately sized (44x44px minimum)
- [ ] Scrolling works smoothly
- [ ] No horizontal overflow

### Error Handling
- [ ] Incomplete answers show proper validation messages
- [ ] Submit button disabled until requirements met
- [ ] Network errors display user-friendly messages
- [ ] Component failures gracefully fallback

---

## Scenario-Based Challenges
For the remaining 59 scenario challenges across all modules:

### Standard Scenario Testing Pattern
- [ ] Question displays clearly
- [ ] All options are clickable
- [ ] Selected option shows visual feedback (checkmark, highlighted border)
- [ ] Can change selection before submitting
- [ ] Submit button shows progress (X/Y answered for multi-part)
- [ ] Correct answers award points
- [ ] Incorrect answers show retry option

---

## Performance Testing
- [ ] Initial page load < 3 seconds
- [ ] Component interactions feel responsive (< 100ms)
- [ ] No JavaScript errors in console
- [ ] Smooth animations and transitions
- [ ] Memory usage remains stable during extended use

---

## Edge Cases to Test
- [ ] Rapid clicking on interactive elements
- [ ] Navigating away mid-challenge and returning
- [ ] Multiple browser tabs with same account
- [ ] Submitting at exact moment of timeout
- [ ] Special characters in text inputs (if any remain)

---

## Known Limitations
- Bundle size is large (1,001 kB) - consider code splitting in future
- Some challenges remain as generic scenarios (can be enhanced further)

---

## Reporting Issues
Please report any issues found during testing with:
1. **Module and Stage number**
2. **Expected behavior**
3. **Actual behavior**
4. **Steps to reproduce**
5. **Screenshots if applicable**
6. **Browser and device information**

---

## Success Criteria
The platform is considered production-ready when:
- [ ] All 13 advanced interactive component types work correctly
- [ ] All 59 scenario challenges function properly
- [ ] No critical bugs in core functionality
- [ ] Dark mode is consistent across all components
- [ ] Mobile experience is fully functional
- [ ] Performance meets acceptable standards
- [ ] User can complete full learning path without blocking issues

---

**Testing Complete**: Please confirm all items checked and provide feedback on user experience quality.
