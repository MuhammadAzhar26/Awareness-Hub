# Design Specification - AwarenessHub

## 1. Direction & Rationale

**Style:** Modern Minimalism Premium

**Visual Essence:** Clean, professional educational platform with generous whitespace and subtle sophistication. Trust-building design that balances corporate credibility with engaging gamification elements. Apple-meets-Coursera aesthetic optimized for extended learning sessions.

**Real-World References:**
- Coursera (educational trust and clarity)
- Stripe Dashboard (professional data presentation)
- Linear (modern task management with clean hierarchy)

**Why This Works:** Cybersecurity education requires professional credibility to build learner trust, especially for students and corporate users seeking certification. The generous spacing (64-96px sections) reduces cognitive load during complex CTF challenges, while the 90% neutral palette keeps focus on learning content rather than flashy visuals. The Modern Minimalism Premium approach positions AwarenessHub as a serious educational platform suitable for both individual learners and corporate training programs.

---

## 2. Design Tokens

### 2.1 Color System

**Primary Brand: Modern Blue**

| Token | Value | Usage |
|-------|-------|-------|
| `primary-50` | #E6F0FF | Hover backgrounds, light accents |
| `primary-100` | #CCE0FF | Badge backgrounds, soft highlights |
| `primary-500` | #0066FF | Primary CTAs, links, active states |
| `primary-600` | #0052CC | CTA hover states, pressed buttons |
| `primary-900` | #003D99 | Dark accents, borders |

**Neutrals: Cool Gray System**

| Token | Value | Usage | WCAG |
|-------|-------|-------|------|
| `neutral-50` | #FAFAFA | Page background | - |
| `neutral-100` | #F5F5F5 | Card/surface backgrounds | - |
| `neutral-200` | #E5E5E5 | Borders, dividers | - |
| `neutral-500` | #A3A3A3 | Disabled text, placeholders | 3.2:1 ❌ |
| `neutral-700` | #404040 | Secondary text, metadata | 8.6:1 ✅ AAA |
| `neutral-900` | #171717 | Primary text, headings | 16.5:1 ✅ AAA |

**Semantic Colors**

| Token | Value | Usage | WCAG |
|-------|-------|-------|------|
| `success-500` | #10B981 | Correct answers, completions | 3.9:1 ⚠️ |
| `success-600` | #059669 | Success text (darker for contrast) | 4.8:1 ✅ AA |
| `warning-500` | #F59E0B | Hint usage, caution states | 2.8:1 ❌ |
| `warning-700` | #B45309 | Warning text (darker for contrast) | 5.2:1 ✅ AA |
| `error-500` | #EF4444 | Wrong answers, errors | 4.0:1 ⚠️ |
| `error-600` | #DC2626 | Error text (darker for contrast) | 5.5:1 ✅ AA |

**Background Layers**

| Token | Value | Purpose |
|-------|-------|---------|
| `bg-page` | #FAFAFA | Page background (neutral-50) |
| `bg-surface` | #FFFFFF | Card backgrounds (float contrast) |
| `bg-elevated` | #FFFFFF | Modals, dropdowns (with shadow) |

**Validated WCAG Pairings:**
1. **Body text:** `neutral-900` on `bg-surface` (16.5:1 ✅ AAA)
2. **Primary CTA:** White (#FFFFFF) on `primary-500` (4.53:1 ✅ AA)
3. **Secondary text:** `neutral-700` on `bg-surface` (8.6:1 ✅ AAA)

**Color Distribution (90-10 Rule):**
- 90% Neutral: All backgrounds, text, borders, navigation
- 10% Accent: CTAs, progress bars, active states, badges (max 1 accent per section)

### 2.2 Typography

**Font Family:**

| Token | Value |
|-------|-------|
| `font-primary` | 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif |
| `font-mono` | 'JetBrains Mono', 'Fira Code', Consolas, monospace (for code challenges) |

**Type Scale (Desktop 1920px)**

| Token | Size | Weight | Line Height | Letter Spacing | Usage |
|-------|------|--------|-------------|----------------|-------|
| `text-hero` | 72px | Bold 700 | 1.1 | -0.02em | Landing page hero |
| `text-h1` | 48px | Bold 700 | 1.2 | -0.01em | Page titles |
| `text-h2` | 36px | Semibold 600 | 1.3 | 0 | Section headers |
| `text-h3` | 24px | Semibold 600 | 1.4 | 0 | Card titles, subsections |
| `text-body-lg` | 20px | Regular 400 | 1.6 | 0 | Intro paragraphs, feature descriptions |
| `text-body` | 16px | Regular 400 | 1.5 | 0 | Standard content, UI text |
| `text-small` | 14px | Regular 400 | 1.5 | 0 | Helper text, metadata |
| `text-caption` | 12px | Regular 400 | 1.4 | 0.01em | Timestamps, legal text |

**Type Scale (Mobile <768px)**

| Token | Size |
|-------|------|
| `text-hero` | 48px |
| `text-h1` | 36px |
| `text-h2` | 28px |
| `text-h3` | 20px |

**Font Weights:**

| Token | Value |
|-------|-------|
| `weight-regular` | 400 |
| `weight-medium` | 500 |
| `weight-semibold` | 600 |
| `weight-bold` | 700 |

**Readability:**
- Max line length: 60-75 characters (~720px at 16px)
- Body line-height: 1.5 (optimal for extended reading)
- Heading line-height: 1.1-1.3 (visual impact)

### 2.3 Spacing (8-Point Grid)

| Token | Value | Usage |
|-------|-------|-------|
| `space-1` | 8px | Tight inline spacing (icon + text) |
| `space-2` | 16px | Standard element spacing |
| `space-3` | 24px | Related group spacing |
| `space-4` | 32px | Card padding MINIMUM |
| `space-6` | 48px | Section internal spacing |
| `space-8` | 64px | Section boundaries |
| `space-12` | 96px | Hero section spacing |
| `space-16` | 128px | Dramatic spacing (rare) |

**Spacing Philosophy:**
- Section spacing: 64-96px (never <48px)
- Card padding: 32-48px (never 16px - looks cheap)
- Element gaps: 24-32px for related groups
- Content-to-whitespace ratio: 60:40

### 2.4 Border Radius

| Token | Value | Usage |
|-------|-------|-------|
| `radius-sm` | 8px | Small elements, badges |
| `radius-md` | 12px | Buttons, inputs |
| `radius-lg` | 16px | Cards, modals |
| `radius-xl` | 24px | Large containers |
| `radius-full` | 9999px | Avatars, pills |

### 2.5 Shadows

| Token | Value | Usage |
|-------|-------|-------|
| `shadow-sm` | 0 1px 2px rgba(0,0,0,0.05) | Subtle borders |
| `shadow-card` | 0 1px 3px rgba(0,0,0,0.1), 0 1px 2px rgba(0,0,0,0.06) | Cards at rest |
| `shadow-card-hover` | 0 10px 15px rgba(0,0,0,0.1), 0 4px 6px rgba(0,0,0,0.05) | Card hover state |
| `shadow-modal` | 0 20px 25px rgba(0,0,0,0.1), 0 10px 10px rgba(0,0,0,0.04) | Modals, dropdowns |

### 2.6 Animation

| Token | Value | Usage |
|-------|-------|-------|
| `duration-fast` | 200ms | Button clicks, quick hovers |
| `duration-base` | 250ms | Standard transitions |
| `duration-slow` | 300ms | Modals, drawers, page transitions |
| `easing-default` | ease-out | 90% of animations (natural deceleration) |
| `easing-smooth` | ease-in-out | Elegant movements (modals, slides) |

**Performance Rule:** Animate ONLY `transform` and `opacity` (GPU-accelerated). Never animate width/height/margin/padding.

---

## 3. Component Specifications

### 3.1 Button Components

**Primary CTA Button**

**Structure:**
- Height: 56px
- Padding: 20px horizontal
- Border radius: 12px
- Font: Semibold 600, 16px
- Icon spacing: 8px (optional icon)

**Tokens:**
- Background: `primary-500`
- Text: White (#FFFFFF)
- Hover background: `primary-600`
- Disabled background: `neutral-200`
- Disabled text: `neutral-500`

**States:**
- **Default:** Solid background, no shadow
- **Hover:** Darken to `primary-600` + transform: translateY(-2px) + scale(1.02) | Duration: 200ms ease-out
- **Active/Pressed:** Scale(0.98)
- **Disabled:** `neutral-200` background, `neutral-500` text, cursor: not-allowed
- **Loading:** Spinner animation, text "Processing...", disabled state

**Note:** Use sparingly - max 1 primary CTA per viewport section. This is the main conversion action.

**Secondary Button**

**Structure:** Same dimensions as Primary

**Tokens:**
- Background: Transparent or `neutral-50`
- Text: `neutral-700`
- Border: 2px solid `neutral-200`
- Hover background: `neutral-100`
- Hover border: `neutral-300`

**States:**
- **Hover:** Background to `neutral-100`, subtle lift -2px
- **Active:** Border darkens to `neutral-400`

**Use Cases:**
- Primary: "Submit Answer", "Start Challenge", "Sign Up", "Unlock Stage"
- Secondary: "View Hints", "Skip", "Cancel", "Go Back"

### 3.2 Module Card Component

**Structure:**
- Dimensions: Auto height, responsive width (4-col grid desktop → 2-col tablet → 1-col mobile)
- Padding: 32px
- Border radius: 16px
- Gap between cards: 24px

**Tokens:**
- Background: `bg-surface` (white)
- Border: 1px solid `neutral-200`
- Icon size: 48px
- Title: `text-h3` (24px Semibold)
- Description: `text-body` (16px Regular)
- Progress bar height: 8px, radius: 4px

**Layout:**
- Top: Module icon (48px, colored SVG)
- Title: Module name (e.g., "Secret Message Detective")
- Description: Brief 1-line summary (max 60 chars)
- Progress bar: Visual completion indicator
- Stats row: "X/6 stages" + "XXX pts" (12px caption, `neutral-700`)
- Lock overlay: Semi-transparent if locked (opacity 0.6, lock icon centered)

**States:**
- **Default:** `shadow-card`, white background
- **Hover (unlocked):** `shadow-card-hover` + transform: translateY(-4px) scale(1.02) + border: `primary-500` | Duration: 250ms ease-out
- **Locked:** Grayscale filter + lock icon overlay + no hover effect
- **Completed:** Green checkmark badge (top-right corner), success color accent

**Note:** Progress bar fills with `primary-500`, background `neutral-200`. Locked cards use cursor: not-allowed.

### 3.3 Challenge Container

**Structure:**
- Max width: 900px (centered)
- Padding: 48px
- Border radius: 16px
- Background: `bg-surface`

**Layout Sections:**
1. **Challenge Header**
   - Breadcrumb: Module > Stage (14px `neutral-700`)
   - Title: Challenge name (36px `text-h2`)
   - Points indicator: Badge showing potential points (e.g., "+50 pts")
   
2. **Scenario Brief**
   - Background: `neutral-50`
   - Padding: 24px
   - Radius: 12px
   - Text: 16px `text-body`, line-height 1.6

3. **Interactive Area**
   - Varies by challenge type:
     - Text input: 56px height input field, full width
     - Code editor: Monospace font, syntax highlighting, 400px min-height
     - File upload: Drag-drop zone with dashed border
   - Border: 2px solid `neutral-200`
   - Focus: 2px ring `primary-500`

4. **Hint System**
   - 3 expandable accordions stacked vertically
   - Each: 16px radius, border `neutral-200`, 16px padding
   - Locked hints: Lock icon, "-X pts" penalty display
   - Unlocked hints: Green checkmark, penalty already applied
   - Spacing: 12px between hint cards

5. **Submission**
   - Primary button: "Submit Answer" (full width mobile, auto desktop)
   - Feedback area: Below submission (success/error message)

**Tokens:**
- Code font: `font-mono`
- Hint penalty colors: `warning-700`
- Success feedback: `success-600` text, `success-50` background
- Error feedback: `error-600` text, `error-50` background

**States:**
- **Pre-submission:** Clean state, input focused
- **Validating:** Loading spinner on button, input disabled
- **Correct:** Success message with confetti animation, points added animation
- **Incorrect:** Error message, shake animation on container, retry enabled

### 3.4 Progress Indicator

**Dot Sequence (for stage navigation)**

**Structure:**
- Horizontal row of 5-6 dots
- Dot size: 12px diameter
- Active dot: 16px diameter
- Gap: 8px between dots

**Tokens:**
- Completed: `primary-500` filled circle
- Active: `primary-500` filled circle (larger)
- Incomplete: `neutral-300` filled circle
- Locked: `neutral-200` filled circle with lock icon overlay (8px)

**Progress Bar (for overall completion)**

**Structure:**
- Height: 8px
- Radius: 4px
- Full width
- Label above: "X% complete" (14px `neutral-700`)

**Tokens:**
- Background: `neutral-200`
- Fill: `primary-500`
- Animation: Smooth width transition 300ms ease-out

**Use Cases:**
- Dot sequence: Stage navigation within module
- Progress bar: Overall module completion, profile stats

### 3.5 Badge/Achievement Card

**Structure:**
- Dimensions: 160×200px (portrait orientation)
- Padding: 24px
- Radius: 16px
- Background: Gradient from `primary-50` to `neutral-50`

**Layout:**
- Top: Badge graphic (80×80px SVG, colored)
- Title: Badge name (16px Semibold, centered)
- Description: Achievement criteria (12px Regular, `neutral-700`, centered)
- Date: Unlock date (12px caption, `neutral-500`)

**States:**
- **Locked:** Grayscale filter, lock icon overlay, dashed border `neutral-300`
- **Unlocked:** Full color, subtle glow shadow (0 0 20px primary-100)
- **Recently Earned:** Pulsing animation on first view, "New!" label (8px pill, `success-500`)

**Badge Gallery Grid:**
- 4 columns desktop → 3 tablet → 2 mobile
- 24px gap
- Responsive masonry layout if varying heights

### 3.6 Leaderboard Table

**Structure:**
- Full width, responsive
- Row height: 64px
- Alternating row backgrounds: White / `neutral-50`
- Border bottom: 1px `neutral-200`

**Columns:**
1. **Rank** (80px): Bold if top 3, medal icons for 1-3
2. **User** (250px): Avatar (32px) + username + level badge
3. **Points** (150px): Total points, Semibold
4. **Badges** (120px): Badge count with icon
5. **Modules** (150px): Completion count "X/12"

**Tokens:**
- Header row: Background `neutral-100`, text 14px Semibold `neutral-700`
- Body row: Text 16px Regular `neutral-900`
- Top 3 ranks: Gold/Silver/Bronze medal icons (24px)
- Current user highlight: Border left 4px `primary-500`, background `primary-50`

**States:**
- **Hover:** Background `neutral-50` (if not already)
- **Current user:** Highlighted permanently with left border accent

---

## 4. Layout & Responsive Strategy

### 4.1 Page Architecture

Based on content-structure-plan.md, AwarenessHub follows an MPA structure with 8 primary page types. Each page applies Modern Minimalism Premium layout patterns.

**Global Navigation Pattern:**
- **Height:** 72px
- **Position:** Sticky top, backdrop-blur optional
- **Layout:** Logo left (32px height) | Horizontal nav center (Dashboard, Modules, Leaderboard, Profile) | CTA right (48px button)
- **Background:** White with `shadow-sm` on scroll
- **Mobile:** Hamburger menu if >4 nav items

**Container System:**
```
Max widths:
- sm/md: 100% (mobile/tablet)
- lg: 1024px (small desktop)
- xl: 1200px (desktop)
- 2xl: 1400px (large desktop)

Padding: 24px mobile, 48px desktop
```

### 4.2 Page-Specific Patterns

**Landing Page (Page 1):**

Apply **Home Page Pattern**:
- Hero Section (500-600px): Full-width, centered content 8-col, headline 72px, CTA 56px, spacing 96px vertical
- Value Proposition: 3-column feature grid, icons 48px, cards 32px padding
- Module Overview: 4-column card grid (apply Module Card §3.2)
- How It Works: Horizontal timeline/steps, 4 steps, icons 64px
- Stats: 4-card metric grid, large numbers 48px
- Final CTA: Centered block, 400px height, primary button 64px

**Dashboard (Page 2):**

Apply **Dashboard Pattern**:
- Welcome Header (200px): User avatar 80px, name 36px, level badge, points display
- Quick Stats: 4-metric card grid (2×2), large numbers 48px, labels 14px
- Module Grid: 4-column card grid (apply Module Card §3.2), 24px gaps
- Recent Activity: Timeline list, 8-10 items, icons 24px
- Achievement Showcase: 6-badge grid (apply Badge Card §3.5)
- Leaderboard Preview: Table format (apply Leaderboard §3.6), top 5 only

**Module Overview (Page 3):**

Apply **Content Page Pattern**:
- Module Hero (350px): Large icon 120px, title 48px, description 20px, difficulty badge
- Progress Summary: Horizontal stats bar, 4 metrics, progress bar full-width
- Stage Cards: Vertical list/timeline, 5-6 cards (apply Challenge Container principles, simplified)
- Layout: 8-col center for content, 2-col sidebars for metadata

**Challenge Stage (Page 4):**

Apply **Detail Page Pattern**:
- Breadcrumb navigation: Top, 14px
- Challenge Container: Apply Challenge Container (§3.3) in 10-col center
- Sidebar (2-col right, desktop only): Progress dots, stats, timer
- Mobile: Stack vertically, sidebar becomes footer

**Profile (Page 6):**

Apply **Grid Page Pattern**:
- Profile Header: 2-col layout (avatar + bio left 4-col, stats right 8-col)
- Stats Dashboard: 6-card grid (3×2), cards 32px padding
- Badge Collection: 4-col grid (apply Badge Card §3.5)
- Module Progress: Full-width table
- Activity: Timeline, left sidebar

**Leaderboard (Page 7):**

Apply **Content Page Pattern**:
- Page Header: Title + filter tabs (horizontal, not sidebar)
- Current User Card: Highlighted card, 8-col center
- Leaderboard Table: Full-width (apply Leaderboard Table §3.6)
- Top 3 Podium: Above table, 3-card special layout

### 4.3 Grid System

**12-Column Grid (Desktop):**
- Common splits:
  - 50/50: 6-6 cols (two-column layouts)
  - 70/30: 8-4 cols (content + sidebar)
  - 33/33/33: 4-4-4 cols (feature grids)
  - Full width: 12 cols (tables, heroes)

**Responsive Behavior:**
- Desktop (≥1024px): 12-col grid, horizontal layouts
- Tablet (768-1023px): 8-col grid, some stacking
- Mobile (<768px): Stack all columns vertically, full-width

### 4.4 Responsive Breakpoints

```
Breakpoints (Tailwind-style):
- sm:  640px  (Mobile landscape)
- md:  768px  (Tablet)
- lg:  1024px (Desktop)
- xl:  1280px (Large desktop)
- 2xl: 1536px (Extra large)
```

**Mobile Adaptations (<768px):**
- Reduce spacing by 33% (64px → 40px, 96px → 64px)
- Stack horizontal layouts vertically
- Navigation: Collapse to hamburger menu
- Cards: Full-width, maintain 24px padding minimum
- Font sizes: Maintain or increase slightly (16px → 18px for readability)
- Touch targets: Minimum 48×48px
- Module grid: 4-col → 2-col → 1-col
- Leaderboard: Horizontal scroll or simplified columns

### 4.5 Spacing Patterns

**Section Gaps:**
- Major sections: 96px desktop, 64px mobile
- Related sections: 64px desktop, 48px mobile
- Subsections: 48px desktop, 32px mobile

**Component Spacing:**
- Card padding: 32-48px desktop, 24px mobile (never less)
- Between cards: 24-32px
- Inline elements: 8-16px
- Form field gaps: 24px

### 4.6 Touch Targets & Accessibility

**Touch Target Minimums:**
- Buttons: 48×48px minimum (prefer 56px height)
- Icons: 44×44px tap area
- Checkbox/radio: 24×24px visual, 44×44px tap area
- Spacing between tappable elements: 8px minimum

**Keyboard Navigation:**
- All interactive elements focusable
- Focus ring: 2px `primary-500`, 4px offset
- Tab order: Logical flow (top→bottom, left→right)

---

## 5. Interaction & Animation Standards

### 5.1 Animation Timing

**Duration Standards:**
- Fast interactions: 200ms (button hovers, quick clicks)
- Standard transitions: 250ms (most UI changes)
- Page transitions: 300ms (modal opens, page loads)

**Easing Functions:**
- Primary (90%): `ease-out` — natural deceleration, feels responsive
- Smooth (10%): `ease-in-out` — elegant for modals, drawers
- Never: `linear` — robotic, unnatural

### 5.2 Component Animations

**Buttons:**
- Hover: transform: translateY(-2px) scale(1.02), 200ms ease-out
- Active/Click: scale(0.98), 100ms ease-out
- Disabled: opacity 0.5, no animation

**Cards:**
- Hover: translateY(-4px) + shadow increase + scale(1.02), 250ms ease-out
- Click: scale(0.99) brief, then navigate

**Modals/Overlays:**
- Enter: opacity 0→1 + scale(0.95→1), 300ms ease-out
- Exit: opacity 1→0 + scale(1→0.95), 250ms ease-in

**Progress Bars:**
- Width changes: 300ms ease-out
- Points counter: Count-up animation, 600ms

**Badges Unlocked:**
- Appear: scale(0→1) + rotate(-5deg→0deg), 400ms ease-out
- Glow: 0 0 20px primary-100 pulsing, 2s infinite

**Challenge Feedback:**
- Correct: Confetti particles + success message fade in + point counter animate
- Incorrect: Shake animation (translateX -10px→10px→0), 400ms
- Hint reveal: Height expand 0→auto, 250ms ease-out

### 5.3 Page Transitions

**Navigation:**
- Fade out current content: 150ms
- Load new content: Immediate
- Fade in new content: 250ms

**Scroll Animations:**
- Fade + translateY(20px→0) for cards/sections on scroll into view
- Stagger delay: 100ms between elements
- Trigger: 80% of element visible

### 5.4 Performance Rules

**GPU-Accelerated Only:**
```
✅ Animate: transform (translate, scale, rotate), opacity
❌ Never: width, height, margin, padding, top, left
```

**Reduced Motion:**
```css
@media (prefers-reduced-motion: reduce) {
  * {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
  }
}
```

### 5.5 Interactive Feedback

**All interactions require visual feedback:**
- **Hover:** State change within 200ms
- **Click:** Visual acknowledgment (scale/color change)
- **Loading:** Spinner or skeleton, disable interaction
- **Success:** Green checkmark + message
- **Error:** Red indicator + helpful message
- **Focus:** Clear focus ring (keyboard users)

**Form Validation:**
- Real-time: After first blur (not while typing)
- Inline errors: Below field, `error-600` text, icon 16px
- Success: Green checkmark icon, `success-600` border

**Loading States:**
- Button: Spinner inside, text "Loading...", disabled
- Page: Skeleton screens (gray blocks, pulsing animation)
- Data tables: Progressive loading with placeholders

---

## Summary

AwarenessHub applies **Modern Minimalism Premium** to create a professional, trust-building cybersecurity learning platform. The design prioritizes:

1. **Generous Spacing:** 64-96px section gaps, 32-48px card padding for cognitive breathing room during complex CTF challenges
2. **90-10 Color Rule:** Neutral dominance with targeted accent usage keeps focus on learning content
3. **Clear Hierarchy:** 3:1 size ratios, strong typographic scale (72px hero → 16px body) guides attention
4. **Subtle Gamification:** Professional badge displays, progress indicators, and micro-animations provide motivation without childish aesthetics
5. **Trust Signals:** WCAG AAA compliance, consistent interactions, clear feedback patterns build educational credibility

**Key Differentiators from Generic Educational Platforms:**
- CTF-specific challenge containers with hint penalty system
- Achievement-focused badge gallery with unlock states
- Leaderboard integration maintaining professional tone
- Module progression system with locked/unlocked states

**Component Count:** 6 core components (Button, Module Card, Challenge Container, Progress Indicator, Badge Card, Leaderboard Table) — each designed for maximum reusability across 8 page types.

**Word Count:** ~2,850 words
