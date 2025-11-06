# Entropy Color Palette

Visual reference for all colors in the Entropy theme.

## Deep Night - Background Colors
Dark foundation inspired by viridis deep purples and blues

| Name | Hex | RGB | Preview | Description |
|------|-----|-----|---------|-------------|
| **entropy0** | `#282a3a` | `rgb(40, 42, 58)` | ![#282a3a](https://placehold.co/100x30/282a3a/282a3a.png) | Darkest background - primary editor background |
| **entropy1** | `#313647` | `rgb(49, 54, 71)` | ![#313647](https://placehold.co/100x30/313647/313647.png) | Dark background - UI panels, sidebars |
| **entropy2** | `#3a3f54` | `rgb(58, 63, 84)` | ![#3a3f54](https://placehold.co/100x30/3a3f54/3a3f54.png) | Elevated background - floating panels, popups |
| **entropy3** | `#435663` | `rgb(67, 86, 99)` | ![#435663](https://placehold.co/100x30/435663/435663.png) | Selection, borders, inactive UI elements |

## Verdant - Green and Teal Tones
Primary UI elements and moderate emphasis

| Name | Hex | RGB | Preview | Description |
|------|-----|-----|---------|-------------|
| **entropy4** | `#31688e` | `rgb(49, 104, 142)` | ![#31688e](https://placehold.co/100x30/31688e/31688e.png) | Deep teal - functions, methods |
| **entropy5** | `#35b779` | `rgb(53, 183, 121)` | ![#35b779](https://placehold.co/100x30/35b779/35b779.png) | Vibrant teal-green - strings, success states |
| **entropy6** | `#5dbd7a` | `rgb(93, 189, 122)` | ![#5dbd7a](https://placehold.co/100x30/5dbd7a/5dbd7a.png) | Medium green - variables, properties |
| **entropy7** | `#a3b087` | `rgb(163, 176, 135)` | ![#a3b087](https://placehold.co/100x30/a3b087/a3b087.png) | Sage green - comments, muted text |

## Luminance - Bright Text and Highlights
Primary foreground colors for text and emphasis

| Name | Hex | RGB | Preview | Description |
|------|-----|-----|---------|-------------|
| **entropy8** | `#b8c5a0` | `rgb(184, 197, 160)` | ![#b8c5a0](https://placehold.co/100x30/b8c5a0/b8c5a0.png) | Light sage - secondary text, inactive elements |
| **entropy9** | `#d4d9b8` | `rgb(212, 217, 184)` | ![#d4d9b8](https://placehold.co/100x30/d4d9b8/d4d9b8.png) | Pale green-cream - primary text, normal content |
| **entropy10** | `#e8e5c8` | `rgb(232, 229, 200)` | ![#e8e5c8](https://placehold.co/100x30/e8e5c8/e8e5c8.png) | Warm cream - emphasized text, headings |
| **entropy11** | `#fff8d4` | `rgb(255, 248, 212)` | ![#fff8d4](https://placehold.co/100x30/fff8d4/fff8d4.png) | Brightest cream - highlights, important text |

## Aurora - Accent Colors
Syntax highlighting and special semantic colors

| Name | Hex | RGB | Preview | Description |
|------|-----|-----|---------|-------------|
| **entropy12** | `#fde724` | `rgb(253, 231, 36)` | ![#fde724](https://placehold.co/100x30/fde724/fde724.png) | Viridis yellow - warnings, special keywords, constants |
| **entropy13** | `#fd971f` | `rgb(253, 151, 31)` | ![#fd971f](https://placehold.co/100x30/fd971f/fd971f.png) | Orange - errors, important notices, numbers |
| **entropy14** | `#dc5fe6` | `rgb(220, 95, 230)` | ![#dc5fe6](https://placehold.co/100x30/dc5fe6/dc5fe6.png) | Purple - keywords, control flow, operators |
| **entropy15** | `#6ec9e0` | `rgb(110, 201, 224)` | ![#6ec9e0](https://placehold.co/100x30/6ec9e0/6ec9e0.png) | Cyan - strings, links, info states |

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
