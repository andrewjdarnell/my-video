# STORYBOARD.md - Quality Engineering vs. Quality Assurance Presentation Video

**Format:** 1920×1080
**Pacing:** Moderate — 8 beats, sub-compositions, CSS crossfades
**Audio:** No narration (music-only) — Underscore: assets/bgm.mp3 (ambient tech loop, 30s)
**Style basis:** DESIGN.md (obsidian-dark `#0f1115`, frosted glass `rgba(26, 29, 36, 0.75)`, ocean cyan `#0ea5e9`, vibrant emerald `#10b981`, alert red `#ef4444`)

---

## Concept
**Message:** Quality Engineering scales quality at the pace of software development through automation, whereas traditional QA creates a manual bottleneck.
**Arc:** Comparison (reveals the manual bottleneck, shifts to continuous automation, shows the simulated difference, and ends with a call to action).
**Audience:** Technical managers, QAs, and developers on LinkedIn or embeds.
**Brand voice:** Modern, clean, authoritative, and data-driven.
**Why this matters now:** Educational showcase about the shift from QA to QE.

---

## Asset Audit
- **bgm_001** (`assets/bgm.mp3`): The 30s background music track. Used in index.html as root audio.
- **icon_001** (`assets/swiss-grid.svg`): Swiss-grid background pattern. Used as accent background in all beats.
- **captured fonts** (`capture/assets/fonts/*.ttf`): Space Grotesk and Inter font families. Verbatim copy into `@font-face` styles.

---

## Required Capabilities Discovery
```
No shader transitions installed
No VFX blocks installed
```
(Transition blocks `whip-pan` and `domain-warp-dissolve` have been added to the registry for transition use.)

---

## Visual Beats

### BEAT 1 — TITLE CARD (0.0s – 3.5s)
- **Concept:** Open with premium title card. Clean typographic build representing modern software quality.
- **VO cue:** None (Instrumental music starts).
- **Visual Description:** Wide shot. Centered layout. A dark canvas with slow blurred cyan and purple background orbs. Title "QUALITY ENGINEERING" in bold Space Grotesk with White-to-Cyan gradient enters from y: 30 with scale zoom-in (0.95 -> 1.0). Subtitle "Evolving from finding bugs to building quality in." slides up from y: 20.
- **Composition & Accents:**
  - Composed: Main Title Card with a frosted glass border container.
  - Accent: `assets/swiss-grid.svg` at 0.15 opacity in background.
- **Text Animations:**
  - `.title`: scale-reveal
  - `.subtitle`: slide-up
- **Beat Timing:** Transition in: 0.0s · GSAP duration: 3.5s
- **SFX:** `assets/sfx/chime.mp3` at 0.2s, volume 0.5.

---

## BEAT 2 — THE TRADITIONAL APPROACH: QA (3.5s – 7.0s)
- **Concept:** Introduce the traditional QA approach. Highlights reactive end-of-cycle bottlenecks.
- **VO cue:** None.
- **Visual Description:** Close-up on a red-bordered glass card. Left panel lists the QA points (Reactive testing, detecting defects *after* coding, heavy manual tasks). Right panel displays a glowing callout card with the quote: "We can't release yet, QA is still testing." in warning red.
- **Composition & Accents:**
  - Composed: Red-themed slide card with a warning quote block.
- **Text Animations:**
  - `h2.title`: character-reveal
  - `li`: slide-right-stagger
- **Beat Timing:** Transition in: 3.5s (whip-pan transition from Beat 1) · GSAP duration: 3.5s
- **SFX:** `assets/sfx/whoosh-short.mp3` at 3.5s (transition swoop), `assets/sfx/error.mp3` at 4.5s (red highlight).

---

## BEAT 3 — THE EVOLUTION: QE (7.0s – 10.5s)
- **Concept:** Introduce the proactive Quality Engineering approach. Continuous feedback.
- **VO cue:** None.
- **Visual Description:** Close-up on a green-bordered glass card. Left panel lists the QE points (Proactive risk mitigation, continuous assurance in CI/CD, machines run regression). Right panel displays a glowing green card with the quote: "Quality is built into the pipeline, not audited at the end."
- **Composition & Accents:**
  - Composed: Green-themed slide card with a success quote block.
- **Text Animations:**
  - `h2.title`: character-reveal
  - `li`: slide-right-stagger
- **Beat Timing:** Transition in: 7.0s (whip-pan transition from Beat 2) · GSAP duration: 3.5s
- **SFX:** `assets/sfx/whoosh-short.mp3` at 7.0s, `assets/sfx/chime.mp3` at 7.8s.

---

## BEAT 4 — KEY DIFFERENCES (10.5s – 14.0s)
- **Concept:** Contrast QA and QE side-by-side to highlight the mindset shift.
- **VO cue:** None.
- **Visual Description:** Medium shot. A sleek comparison table slides into view. Rows highlight:
  - Finding bugs (QA) -> Mitigating risk (QE)
  - Manual execution -> Test automation
  - Siloed gatekeeper -> Quality enabler
  - Bottleneck -> Accelerator
  Cyan underline glows under each QE cell sequentially.
- **Composition & Accents:**
  - Composed: Glass comparison table.
- **Text Animations:**
  - `tr`: stagger-reveal
- **Beat Timing:** Transition in: 10.5s · GSAP duration: 3.5s
- **SFX:** `assets/sfx/pop.mp3` at 10.8s, 11.4s, 12.0s, 12.6s (row highlight beats).

---

## BEAT 5 — FEEDBACK LOOPS (14.0s – 17.5s)
- **Concept:** Detail the shift-left CI/CD feedback loop.
- **VO cue:** None.
- **Visual Description:** Medium shot. Left side displays the loop philosophy. Right side shows a beautiful circular pipeline loop diagram ("Code -> Build -> Auto-Test -> Feedback") with an active glowing cyan node tracing the circle in a continuous loop.
- **Composition & Accents:**
  - Composed: Interactive circular svg pipeline.
- **Text Animations:**
  - `h2.title`: slide-up
  - `li`: fade-in
- **Beat Timing:** Transition in: 14.0s · GSAP duration: 3.5s
- **SFX:** `assets/sfx/whoosh-short.mp3` at 14.0s, `assets/sfx/ping.mp3` at 14.8s.

---

## BEAT 6 — THE SIMULATION SHOWDOWN (17.5s – 24.5s)
- **Concept:** The visual showdown showing manual QA hitting a bandwidth wall while QE automation scales effortlessly.
- **VO cue:** None.
- **Visual Description:** Wide shot. A side-by-side split lane board. Left is QA Bottleneck; right is QE Automation. Developer and tester/robot emojis are active. Emojis move and spawn code blocks `{ }` that slide down conveyor lanes.
  - Left board: Emojis push code to tester 🕵️. After Sprint 3, capacity is saturated. Code blocks turn red, stack up, and fly off the screen as "Escaped Bugs" which increments rapidly.
  - Right board: Emojis push code to robot 🤖. Capacity scales instantly. All blocks turn green and fade into verified assets. Escaped bugs counter remains at 0.
- **Composition & Accents:**
  - Composed: Active side-by-side animated conveyor belts.
- **Text Animations:**
  - `.sim-sprint-badge`: pop-in
  - `.stat-val`: count-up
- **Beat Timing:** Transition in: 17.5s (domain-warp-dissolve transition from Beat 5) · GSAP duration: 7.0s
- **SFX:** `assets/sfx/impact-bass-1.mp3` at 17.6s, `assets/sfx/glitch-1.mp3` at 19.5s.

---

## BEAT 7 — THE ROI & WHY SHIFT (24.5s – 28.0s)
- **Concept:** Address the "too expensive" fallacy with long-term math.
- **VO cue:** None.
- **Visual Description:** Close-up. A financial-tech card. Left side breaks down the math: 6 to 36 months dev time = 72 to 120 releases. Right panel shows a bento box with an arrow counting from $0 to $10,000 savings and a text label "Exponential ROI".
- **Composition & Accents:**
  - Composed: Financial chart card with up-arrow count animation.
- **Text Animations:**
  - `h2.title`: slide-up
  - `li`: fade-in
- **Beat Timing:** Transition in: 24.5s · GSAP duration: 3.5s
- **SFX:** `assets/sfx/pop.mp3` at 24.6s.

---

## BEAT 8 — CALL TO ACTION / OUTRO (28.0s – 31.0s)
- **Concept:** Bring it together and invite the audience to elevate their quality.
- **VO cue:** None.
- **Visual Description:** Wide shot. Background orbs converge into a single glowing cyan lens. The text "Elevate Our Quality." rises. The card: "Join the QE Guild" fades in, followed by contact details: "Andrew Darnell, Principal Test Engineer".
- **Composition & Accents:**
  - Composed: Outro call-to-action slide.
- **Text Animations:**
  - `.cta-title`: scale-reveal
  - `.contact-info`: slide-up
- **Beat Timing:** Transition in: 28.0s · GSAP duration: 3.0s
- **SFX:** `assets/sfx/chime.mp3` at 28.2s, volume 0.6.

---

## Production Architecture
```
project/
├── index.html                    root — BGM + beat orchestration
├── DESIGN.md                     brand reference
├── SCRIPT.md                     narration/overlay text record
├── STORYBOARD.md                 THIS FILE
├── assets/
│   ├── bgm.mp3                   background music track
│   └── swiss-grid.svg            background grid pattern
└── compositions/
    ├── beat-1-title.html
    ├── beat-2-qa.html
    ├── beat-3-qe.html
    ├── beat-4-differences.html
    ├── beat-5-loops.html
    ├── beat-6-simulation.html
    ├── beat-7-roi.html
    ├── beat-8-outro.html
    ├── whip-pan.html
    └── domain-warp-dissolve.html
```
