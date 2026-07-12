# DESIGN.md - Quality Engineering vs. Quality Assurance Brand Identity

## 1. Visual Theme
The presentation website employs a premium, tech-forward dark theme with an obsidian-dark background (`#0f1115`) and a sophisticated glassmorphic overlay hierarchy. A deep ocean cyan (`#0ea5e9`) is used as the core accent for primary headers, key details, and programmatic connections, while streaming purple (`#a855f7`) and success green (`#10b981`) designate dynamic pipelines and active healthy nodes. The typography uses Space Grotesk for technical, structural headings and Inter for highly legible body copy. The ambient background features slow-drifting blurred orbs that create a sense of fluid depth and premium animation.

## 2. Quick Reference

### Colors
- **Obsidian Dark** (`#0f1115`): Base background.
- **Glass Panel** (`rgba(26, 29, 36, 0.75)`): Slide card and container backgrounds.
- **Ocean Cyan** (`#0ea5e9`): Core accent, healthy execution steps, active lines.
  - Contrast on Obsidian Dark: 6.8:1 ✅
  - Contrast on Glass Panel: 5.1:1 ✅
- **Streaming Purple** (`#a855f7`): Data ingestion, pipeline indicators.
  - Contrast on Obsidian Dark: 4.8:1 ✅
  - Contrast on Glass Panel: 3.6:1 ⚠ Large Text Only
- **Vibrant Emerald** (`#10b981`): Success, verified features, healthy states.
  - Contrast on Obsidian Dark: 6.9:1 ✅
  - Contrast on Glass Panel: 5.2:1 ✅
- **Alert Red** (`#ef4444`): Manual bottleneck, bugs, failures.
  - Contrast on Obsidian Dark: 4.9:1 ✅
  - Contrast on Glass Panel: 3.7:1 ⚠ Large Text Only
- **Warning Amber** (`#f59e0b`): Warning, rejected rework, queue bottleneck.
  - Contrast on Obsidian Dark: 7.2:1 ✅
  - Contrast on Glass Panel: 5.4:1 ✅
- **Text Main (Slate White)** (`#e2e8f0`): Primary body text.
  - Contrast on Obsidian Dark: 15.3:1 ✅
  - Contrast on Glass Panel: 11.5:1 ✅
- **Text Muted (Slate Gray)** (`#94a3b8`): Secondary body text, borders, grid lines.
  - Contrast on Obsidian Dark: 7.4:1 ✅
  - Contrast on Glass Panel: 5.6:1 ✅

### Fonts
- **Display/Headers:** `"Space Grotesk"` (weights 400, 600, 700)
- **Body/UI:** `"Inter"` (weights 400, 600, 700)
- **Fallback stack:** `-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif`

#### `@font-face` block to paste in compositions:
```css
@font-face {
  font-family: "Inter";
  src: url("../capture/assets/fonts/UcCO3FwrK3iLTeHuS_nVMrMxCp50SjIw2boKoduKmMEVuLyfMZg.ttf") format("truetype");
  font-weight: 400;
  font-style: normal;
}
@font-face {
  font-family: "Inter";
  src: url("../capture/assets/fonts/UcCO3FwrK3iLTeHuS_nVMrMxCp50SjIw2boKoduKmMEVuGKYMZg.ttf") format("truetype");
  font-weight: 600;
  font-style: normal;
}
@font-face {
  font-family: "Inter";
  src: url("../capture/assets/fonts/UcCO3FwrK3iLTeHuS_nVMrMxCp50SjIw2boKoduKmMEVuFuYMZg.ttf") format("truetype");
  font-weight: 700;
  font-style: normal;
}
@font-face {
  font-family: "Space Grotesk";
  src: url("../capture/assets/fonts/V8mQoQDjQSkFtoMM3T6r8E7mF71Q-gOoraIAEj7oUUsj.ttf") format("truetype");
  font-weight: 400;
  font-style: normal;
}
@font-face {
  font-family: "Space Grotesk";
  src: url("../capture/assets/fonts/V8mQoQDjQSkFtoMM3T6r8E7mF71Q-gOoraIAEj42Vksj.ttf") format("truetype");
  font-weight: 600;
  font-style: normal;
}
@font-face {
  font-family: "Space Grotesk";
  src: url("../capture/assets/fonts/V8mQoQDjQSkFtoMM3T6r8E7mF71Q-gOoraIAEj4PVksj.ttf") format("truetype");
  font-weight: 700;
  font-style: normal;
}
```

## 3. Component Stylings

### Action Button (Vite Mode Accent)
- **Background:** `rgba(255, 255, 255, 0.06)`
- **Border:** `1px solid rgba(255, 255, 255, 0.08)`
- **Hover Border:** `1px solid #0ea5e9`
- **Border Radius:** `20px`
- **Text Color:** `#e2e8f0`
- **Padding:** `0.4rem 1rem`
- **Font:** Inter 13px / 600

### Conveyor Simulation Panel
- **Background:** `rgba(26, 29, 36, 0.4)`
- **Border:** `1px solid rgba(255, 255, 255, 0.08)`
- **Border Radius:** `8px`
- **Padding:** `1.5rem`
- **Shadow:** `0 12px 40px rgba(0, 0, 0, 0.4)`

### Simulation Block (`{ }`)
- **Background:** `rgba(14, 165, 233, 0.15)`
- **Border:** `1px solid rgba(14, 165, 233, 0.3)`
- **Border Radius:** `4px`
- **Text Color:** `#0ea5e9`
- **Font:** monospace
- **Dimension:** `32px` width by `32px` height (with centered text)

### Stat Counter Card
- **Background:** `rgba(255, 255, 255, 0.03)`
- **Border:** `1px solid rgba(255, 255, 255, 0.05)`
- **Border Radius:** `6px`
- **Padding:** `0.75rem`
- **Value Font:** Space Grotesk 2rem / 700
- **Label Font:** Inter 0.75rem / 600

## 4. Spacing & Layout
- **Base Unit:** `8px`
- **Scale:** `8px` (sm), `16px` (md), `24px` (lg), `32px` (xl), `48px` (2xl), `64px` (3xl)
- **Layout Margins:** Minimum `48px` horizontal margin around slide contents.
- **Card Padding:** `32px` for slide content blocks, `24px` for bento grids.
- **Whitespace Philosophy:** Slide layouts should feel balanced and structured. Use large section gaps (`48-64px`) and spacious spacing between labels to communicate engineering cleanliness.

## 5. Iteration Guide
1. **Always use Space Grotesk for titles and Inter for descriptions/lists.** Titles should use a subtle vertical linear gradient from `#ffffff` (top) to `#0ea5e9` (bottom) for a premium metallic cyber feel.
2. **Never use saturated primary colors directly for large panels.** All panels must use the frosted glass formula: `rgba(26, 29, 36, 0.75)` with `1px solid rgba(255, 255, 255, 0.08)` and `backdrop-filter: blur(12px)`.
3. **Contrast targets are mandatory.** Ensure text on glass panels uses `#e2e8f0` for body copy and `#94a3b8` for secondary text or helper labels. Avoid using mid-greens or light-reds for plain text overlays; restrict them to status pills and badges.
4. **All interactive simulation elements must use standard dimensions.** Conveyor belts should have lanes at least `120px` high with developer emojis (`👩‍💻`/`👨‍💻`) on the left and tester/automation nodes (`🕵️`/`🤖`) on the right.
5. **The layout must scale within a locked 16:9 box.** Target `1920x1080` canvas resolution with layout structures positioned relative to the center grid to avoid cropping at other aspect ratios.
