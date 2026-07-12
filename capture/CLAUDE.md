# Quality Engineering vs Quality Assurance

Source: http://localhost:5174/

To create a video from this capture, use the `website-to-video` skill.

## What's in This Capture

| File | Contents |
|------|----------|
| `screenshots/contact-sheet.jpg` | **View this first.** All scroll screenshots in labeled grid — see the entire page at a glance |
| `screenshots/scroll-*.png` | Individual viewport screenshots if you need detail on a specific section. |
| `extracted/tokens.json` | Design tokens: 9 colors, 2 fonts, 1 headings, 0 CTAs |
| `extracted/design-styles.json` | Computed styles from live DOM: typography hierarchy, button/card/nav styles, spacing scale, border-radius, box shadows. Primary data source for DESIGN.md. |
| `extracted/asset-descriptions.md` | One-line description of every downloaded asset. Read this for asset selection — only open individual files for safe-zone checking. |
| `extracted/visible-text.txt` | Page text in DOM order, prefixed with HTML tag (`[h1]`, `[p]`, `[a]`). Use as context — rephrase freely. |
| `assets/contact-sheet.jpg` | All downloaded images in one labeled grid. |
| `assets/` | Individual downloaded images, SVGs, and font files. |

## Brand Summary

- **Colors**: #1A1D24 (surface-dark), #E2E8F0 (bg-light), #FFFFFF (bg-light), #0EA5E9 (accent), #0F1115 (surface-dark), #94A3B8 (neutral), #10B981 (accent), #EF4444 (accent), #A855F7 (accent)
- **Fonts**: Inter (400,600,700), Space Grotesk (400,600,700)
