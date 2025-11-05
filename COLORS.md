# Entropy Color Palette

Visual reference for all colors in the Entropy theme.

## Deep Night - Background Colors
Dark foundation inspired by viridis deep purples and blues

| Color | Hex | RGB | Description |
|-------|-----|-----|-------------|
| ![#282a3a](https://via.placeholder.com/30x30/282a3a/282a3a.png) entropy0 | `#282a3a` | `rgb(40, 42, 58)` | Darkest background - primary editor background |
| ![#313647](https://via.placeholder.com/30x30/313647/313647.png) entropy1 | `#313647` | `rgb(49, 54, 71)` | Dark background - UI panels, sidebars |
| ![#3a3f54](https://via.placeholder.com/30x30/3a3f54/3a3f54.png) entropy2 | `#3a3f54` | `rgb(58, 63, 84)` | Elevated background - floating panels, popups |
| ![#435663](https://via.placeholder.com/30x30/435663/435663.png) entropy3 | `#435663` | `rgb(67, 86, 99)` | Selection, borders, inactive UI elements |

## Verdant - Green and Teal Tones
Primary UI elements and moderate emphasis

| Color | Hex | RGB | Description |
|-------|-----|-----|-------------|
| ![#31688e](https://via.placeholder.com/30x30/31688e/31688e.png) entropy4 | `#31688e` | `rgb(49, 104, 142)` | Deep teal - functions, methods |
| ![#35b779](https://via.placeholder.com/30x30/35b779/35b779.png) entropy5 | `#35b779` | `rgb(53, 183, 121)` | Vibrant teal-green - strings, success states |
| ![#5dbd7a](https://via.placeholder.com/30x30/5dbd7a/5dbd7a.png) entropy6 | `#5dbd7a` | `rgb(93, 189, 122)` | Medium green - variables, properties |
| ![#a3b087](https://via.placeholder.com/30x30/a3b087/a3b087.png) entropy7 | `#a3b087` | `rgb(163, 176, 135)` | Sage green - comments, muted text |

## Luminance - Bright Text and Highlights
Primary foreground colors for text and emphasis

| Color | Hex | RGB | Description |
|-------|-----|-----|-------------|
| ![#b8c5a0](https://via.placeholder.com/30x30/b8c5a0/b8c5a0.png) entropy8 | `#b8c5a0` | `rgb(184, 197, 160)` | Light sage - secondary text, inactive elements |
| ![#d4d9b8](https://via.placeholder.com/30x30/d4d9b8/d4d9b8.png) entropy9 | `#d4d9b8` | `rgb(212, 217, 184)` | Pale green-cream - primary text, normal content |
| ![#e8e5c8](https://via.placeholder.com/30x30/e8e5c8/e8e5c8.png) entropy10 | `#e8e5c8` | `rgb(232, 229, 200)` | Warm cream - emphasized text, headings |
| ![#fff8d4](https://via.placeholder.com/30x30/fff8d4/fff8d4.png) entropy11 | `#fff8d4` | `rgb(255, 248, 212)` | Brightest cream - highlights, important text |

## Aurora - Accent Colors
Syntax highlighting and special semantic colors

| Color | Hex | RGB | Description |
|-------|-----|-----|-------------|
| ![#fde724](https://via.placeholder.com/30x30/fde724/fde724.png) entropy12 | `#fde724` | `rgb(253, 231, 36)` | Viridis yellow - warnings, special keywords, constants |
| ![#fd971f](https://via.placeholder.com/30x30/fd971f/fd971f.png) entropy13 | `#fd971f` | `rgb(253, 151, 31)` | Orange - errors, important notices, numbers |
| ![#dc5fe6](https://via.placeholder.com/30x30/dc5fe6/dc5fe6.png) entropy14 | `#dc5fe6` | `rgb(220, 95, 230)` | Purple - keywords, control flow, operators |
| ![#6ec9e0](https://via.placeholder.com/30x30/6ec9e0/6ec9e0.png) entropy15 | `#6ec9e0` | `rgb(110, 201, 224)` | Cyan - strings, links, info states |

## Color Relationships

```
Dark ────────────────────────────────────────────────────────────► Light
     ↓                                                              ↓
Deep Night (0-3)                                           Luminance (8-11)
     ↓                                                              ↓
  Background                                                   Foreground

Cool ────────────────────────────────────────────────────────────► Warm
     ↓                                                              ↓
Verdant (4-7)                                              Aurora (12-15)
     ↓                                                              ↓
Primary UI/Syntax                                            Accents
```

## Semantic Mappings

### Backgrounds
- **Primary**: entropy0 (#282a3a)
- **Secondary**: entropy1 (#313647)
- **Elevated**: entropy2 (#3a3f54)

### Foreground
- **Primary**: entropy9 (#d4d9b8)
- **Secondary**: entropy8 (#b8c5a0)
- **Emphasized**: entropy10 (#e8e5c8)
- **Bright**: entropy11 (#fff8d4)

### Syntax
- **Keyword**: entropy14 (#dc5fe6) - Purple
- **Function**: entropy4 (#31688e) - Deep teal
- **Variable**: entropy6 (#5dbd7a) - Medium green
- **String**: entropy15 (#6ec9e0) - Cyan
- **Number**: entropy13 (#fd971f) - Orange
- **Comment**: entropy7 (#a3b087) - Sage green
- **Constant**: entropy12 (#fde724) - Yellow
- **Type**: entropy10 (#e8e5c8) - Warm cream

### UI States
- **Error**: entropy13 (#fd971f) - Orange
- **Warning**: entropy12 (#fde724) - Yellow
- **Info**: entropy15 (#6ec9e0) - Cyan
- **Success**: entropy5 (#35b779) - Teal-green

## Accessibility

The Entropy color palette is designed with accessibility in mind:

- **Contrast**: All foreground/background combinations meet WCAG AA standards for normal text
- **Colorblind-friendly**: Based on viridis, which is designed to be perceivable by viewers with common forms of color blindness
- **Perceptually uniform**: Color gradients represent data uniformly across the entire color range

## Terminal Colors (ANSI)

| ANSI | Normal | Bright | Entropy |
|------|--------|--------|---------|
| Black | 0 | 8 | entropy0 / entropy3 |
| Red | 1 | 9 | entropy13 |
| Green | 2 | 10 | entropy5 / entropy6 |
| Yellow | 3 | 11 | entropy12 |
| Blue | 4 | 12 | entropy4 |
| Magenta | 5 | 13 | entropy14 |
| Cyan | 6 | 14 | entropy15 |
| White | 7 | 15 | entropy9 / entropy11 |
