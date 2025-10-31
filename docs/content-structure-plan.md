# Content Structure Plan - AwarenessHub

## 1. Material Inventory

**Platform Type:** Interactive web application (cybersecurity learning platform)

**Core Features:**
- 12 cybersecurity learning modules with CTF-style challenges
- User authentication and profile management
- Progress tracking and gamification system
- Dashboard with analytics and leaderboards
- Hint system with penalty scoring
- Badge and achievement gallery

**Content Sources:**
- Module content: 12 modules × 5-6 stages = 60-72 challenge scenarios
- Educational content: Instructions, hints, explanations
- Gamification assets: Badges, achievements, level descriptions
- User-generated data: Progress, scores, completions

## 2. Website Structure

**Type:** MPA (Multi-Page Application)

**Reasoning:** 
- Complex application with 10+ distinct functional areas (dashboard, 12 modules, profile, leaderboard)
- Multiple user journeys (learning, progress tracking, social features)
- Content volume: 60-72 unique challenge scenarios requiring dedicated pages
- Different user goals per section (learn vs. compete vs. track progress)
- SEO benefit for educational content and module discoverability

## 3. Page/Section Breakdown

### Page 1: Landing Page (`/`)
**Purpose:** Convert visitors to registered users, explain platform value

**Content Mapping:**

| Section | Component Pattern | Data Source | Content to Extract | Visual Asset |
|---------|------------------|-------------|-------------------|--------------|
| Hero | Hero Pattern | Static content | Platform name, tagline, primary CTA | - |
| Value Proposition | 3-Column Feature Grid | Static content | Key benefits (12+ modules, CTF-style, progression system) | - |
| Module Overview | 4-Column Card Grid | Module metadata | 12 module names + icons + brief descriptions | Module icons (SVG) |
| How It Works | Timeline/Steps Pattern | Static content | 4-step process (Sign Up → Choose Module → Complete Challenges → Earn Badges) | - |
| Stats/Social Proof | Metric Cards (3-4 cards) | Platform statistics | User count, challenges completed, badges earned | - |
| CTA Section | Centered CTA Block | Static content | Sign up call-to-action | - |

---

### Page 2: Dashboard (`/dashboard`)
**Purpose:** Central hub for authenticated users to track progress and access modules

**Content Mapping:**

| Section | Component Pattern | Data Source | Content to Extract | Visual Asset |
|---------|------------------|-------------|-------------------|--------------|
| Welcome Header | Page Header | User profile data | User name, level, total points | User avatar |
| Quick Stats | 4-Metric Card Grid | User progress data | Total points, completed modules, badges earned, current streak | - |
| Module Grid | 4-Column Card Grid | Module data + user progress | Module name, completion %, locked/unlocked status | Module icons (SVG) |
| Recent Activity | Timeline/List Pattern | Activity log data | Recent completions, badges earned, hints used | - |
| Achievement Showcase | Badge Gallery (Featured) | User achievements | 4-6 featured badges with unlock status | Badge graphics (SVG) |
| Leaderboard Preview | Table/List (Top 5) | Leaderboard data | Top 5 users: rank, name, points, level | User avatars |

---

### Page 3: Module Overview (`/module/[module-id]`)
**Purpose:** Present module structure and stage progression

**Content Mapping:**

| Section | Component Pattern | Data Source | Content to Extract | Visual Asset |
|---------|------------------|-------------|-------------------|--------------|
| Module Header | Hero Pattern (300-400px) | Module metadata | Module name, description, difficulty, total stages | Module icon (large, SVG) |
| Progress Summary | Progress Bar + Stats | User module progress | Stages completed (X/6), points earned, time spent | - |
| Stage Cards | Vertical Timeline/List (5-6 cards) | Stage data + user progress | Stage number, title, points value, locked/unlocked/completed status | - |
| Learning Objectives | 2-Column List | Module metadata | Skills learned, concepts covered | - |
| Prerequisites | Info Card | Module metadata | Required knowledge, recommended prior modules | - |

**Module Structure (12 Modules):**
1. Secret Message Detective (Cryptography)
2. Password Guardian Academy
3. Email Detective Game (Phishing)
4. Network Security Analyst
5. Malware Hunter
6. Firewall Specialist
7. Mobile Security Guardian
8. Cloud Security Architect
9. Digital Forensics Investigator
10. Social Engineering Defense
11. Secure Coding Practices
12. Payment Security Expert

---

### Page 4: Challenge Stage (`/module/[module-id]/stage/[stage-id]`)
**Purpose:** Present CTF-style challenge with interactive elements

**Content Mapping:**

| Section | Component Pattern | Data Source | Content to Extract | Visual Asset |
|---------|------------------|-------------|-------------------|--------------|
| Stage Header | Breadcrumb + Title | Stage metadata | Module name → Stage number/title | - |
| Challenge Brief | Content Block | Challenge scenario | Scenario description, context, objectives | - |
| Interactive Challenge | Challenge Container | Challenge data | Challenge interface (varies by type: code editor, file upload, text input) | - |
| Hint System | Expandable Accordion (3 hints) | Hint data | Hint 1/2/3 text, point penalties (-10/-20/-30 points) | Lock icon (SVG) |
| Submission Interface | Form + Button | - | Answer input field, submit button, feedback display | - |
| Progress Indicator | Progress Dots/Bar | User stage progress | Current stage in sequence (e.g., 3/6) | - |
| Navigation | Previous/Next Buttons | - | Navigate between stages | - |

---

### Page 5: Profile (`/profile`)
**Purpose:** Display comprehensive user progress and personalization

**Content Mapping:**

| Section | Component Pattern | Data Source | Content to Extract | Visual Asset |
|---------|------------------|-------------|-------------------|--------------|
| Profile Header | 2-Column Layout | User profile data | Avatar, username, level, member since, bio | User avatar |
| Stats Dashboard | 6-Card Grid | User statistics | Total points, modules completed, badges, hints used, average score, time spent | - |
| Badge Collection | Gallery Grid (3-4 cols) | User badges | All earned badges with titles, descriptions, unlock dates | Badge graphics (SVG) |
| Module Progress | Table/List | Module completion data | 12 modules: name, completion %, points earned, best time | Module icons (SVG) |
| Activity History | Timeline | Activity log | Recent activity: completions, achievements, milestones | - |
| Settings Section | Form Layout | User preferences | Email, password, notifications, privacy settings | - |

---

### Page 6: Leaderboard (`/leaderboard`)
**Purpose:** Display competitive rankings and social features

**Content Mapping:**

| Section | Component Pattern | Data Source | Content to Extract | Visual Asset |
|---------|------------------|-------------|-------------------|--------------|
| Page Header | Header with Filters | - | Title, time period filters (all-time, monthly, weekly) | - |
| Current User Card | Highlight Card | User rank data | Current user's rank, points, percentile | User avatar |
| Leaderboard Table | Data Table | Leaderboard data | Rank, username, level, total points, badges, modules completed | User avatars |
| Top Performers | 3-Card Podium | Top 3 users | Enhanced display for ranks 1-3 | User avatars |
| Category Filters | Tab Navigation | - | Filter by: Overall, By Module, By Time Period | - |

---

### Page 7: Authentication Pages (`/login`, `/signup`)
**Purpose:** User registration and authentication

**Content Mapping:**

| Section | Component Pattern | Data Source | Content to Extract | Visual Asset |
|---------|------------------|-------------|-------------------|--------------|
| Auth Container | Centered Form (6-col) | Static content | Form title, description | - |
| Login Form | Input Fields + CTA | - | Email, password fields, submit button, forgot password link | - |
| Signup Form | Input Fields + CTA | - | Email, username, password, confirm password, terms checkbox | - |
| Social Auth | Button Group | - | "Continue with Google/GitHub" options | Provider logos (SVG) |
| Redirect Links | Text Links | - | "Already have account?" / "Need an account?" | - |

---

### Page 8: Module Completion (`/module/[module-id]/complete`)
**Purpose:** Celebrate module completion and show results

**Content Mapping:**

| Section | Component Pattern | Data Source | Content to Extract | Visual Asset |
|---------|------------------|-------------|-------------------|--------------|
| Celebration Hero | Centered Content (400-500px) | Completion data | "Module Complete!" message, confetti animation trigger | Trophy icon (SVG) |
| Results Summary | Stats Grid (2×2) | Completion metrics | Total points earned, time taken, accuracy %, hints used | - |
| Badges Earned | Badge Display | Earned badges | New badges unlocked from this module | Badge graphics (SVG) |
| Next Steps | CTA Cards | Recommendations | Suggested next module, revisit challenges, view leaderboard | - |

---

## 4. Content Analysis

**Information Density:** High
- 60-72 unique challenge scenarios across 12 modules
- Complex user data (progress, scores, badges, activity logs)
- Rich gamification elements (achievements, leaderboards, hints)

**Content Balance:**
- Text content: ~40% (instructions, scenarios, educational content)
- Interactive elements: ~40% (challenges, forms, inputs)
- Visual elements: ~20% (icons, badges, progress indicators, avatars)

**Content Type:** Mixed (Educational + Interactive + Social)
- Educational: Challenge scenarios, hints, learning objectives
- Interactive: CTF challenges, submissions, real-time feedback
- Social: Leaderboards, achievements, user profiles

**User Journey Complexity:** High
- Multiple interconnected flows (learning → progression → achievement)
- State-dependent content (locked/unlocked, completed/incomplete)
- Personalized experience based on user progress

**Design Implications:**
- Clear visual hierarchy needed for complex information
- Strong progress indicators throughout experience
- Consistent feedback patterns for interactions
- Prominent gamification elements to drive engagement
- Trust-building design for educational credibility
