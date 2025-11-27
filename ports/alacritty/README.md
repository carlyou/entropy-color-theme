# Entropy - Alacritty Port

A modern color theme for [Alacritty](https://alacritty.org/) inspired by the viridis colormap and natural earth tones.

## Installation

### Option 1: Import (Recommended)

1. Copy `entropy.yml` to your Alacritty configuration directory:

   **Linux/macOS:**
   ```bash
   cp entropy.yml ~/.config/alacritty/
   ```

   **Windows:**
   ```powershell
   cp entropy.yml $env:APPDATA\alacritty\
   ```

2. In your main `alacritty.yml` or `alacritty.toml`, add an import statement:

   **For YAML config (alacritty.yml):**
   ```yaml
   import:
     - ~/.config/alacritty/entropy.yml
   ```

   **For TOML config (alacritty.toml):**
   ```toml
   import = [
     "~/.config/alacritty/entropy.yml"
   ]
   ```

3. Restart Alacritty or reload the configuration with `Ctrl+Shift+R` (Linux/Windows) or `Cmd+Shift+R` (macOS)

### Option 2: Direct Integration

Copy the `colors` section from `entropy.yml` directly into your `alacritty.yml` or convert it to TOML for `alacritty.toml`.

## Features

- Full ANSI color support (16 colors)
- Custom cursor colors
- Search match highlighting
- Selection colors
- Vi mode cursor colors
- Line indicator colors
- Dim colors for reduced brightness

## Color Mapping

### Primary Colors

- **Background**: #282a3a (entropy0) - Darkest background
- **Foreground**: #d4d9b8 (entropy9) - Primary text
- **Cursor**: #d4d9b8 (entropy9) on #282a3a background
- **Selection**: #fff8d4 (entropy11) text on #435663 (entropy3) background

### Terminal Colors (ANSI)

| ANSI | Normal | Color | Entropy |
|------|--------|-------|---------|
| 0 | Black | Dark background | entropy0 (#282a3a) |
| 1 | Red | Orange (errors) | entropy13 (#fd971f) |
| 2 | Green | Teal-green (success) | entropy5 (#35b779) |
| 3 | Yellow | Viridis yellow (warnings) | entropy12 (#fde724) |
| 4 | Blue | Deep teal | entropy4 (#31688e) |
| 5 | Magenta | Purple | entropy14 (#dc5fe6) |
| 6 | Cyan | Light cyan | entropy15 (#6ec9e0) |
| 7 | White | Primary text | entropy9 (#d4d9b8) |

| ANSI | Bright | Color | Entropy |
|------|--------|-------|---------|
| 8 | Bright Black | Selection/borders | entropy3 (#435663) |
| 9 | Bright Red | Orange (errors) | entropy13 (#fd971f) |
| 10 | Bright Green | Medium green | entropy6 (#5dbd7a) |
| 11 | Bright Yellow | Viridis yellow | entropy12 (#fde724) |
| 12 | Bright Blue | Deep teal | entropy4 (#31688e) |
| 13 | Bright Magenta | Purple | entropy14 (#dc5fe6) |
| 14 | Bright Cyan | Light cyan | entropy15 (#6ec9e0) |
| 15 | Bright White | Brightest text | entropy11 (#fff8d4) |

## Customization

You can override specific colors by adding them after the import in your `alacritty.yml`:

```yaml
import:
  - ~/.config/alacritty/entropy.yml

colors:
  primary:
    background: '#1f2129'  # Custom darker background
```

## Recommended Settings

For the best experience with the Entropy theme:

```yaml
# Font configuration
font:
  normal:
    family: "JetBrains Mono"
    style: Regular
  bold:
    family: "JetBrains Mono"
    style: Bold
  italic:
    family: "JetBrains Mono"
    style: Italic
  size: 11.0

# Cursor
cursor:
  style:
    shape: Block
    blinking: On
  blink_interval: 750

# Window
window:
  padding:
    x: 8
    y: 8
  decorations: full
  opacity: 0.95

# Scrolling
scrolling:
  history: 10000
  multiplier: 3
```

## TOML Configuration

If you're using Alacritty's newer TOML configuration format, here's the equivalent configuration:

```toml
[colors.primary]
background = "#282a3a"
foreground = "#d4d9b8"

[colors.cursor]
text = "#282a3a"
cursor = "#d4d9b8"

[colors.selection]
text = "#fff8d4"
background = "#435663"

[colors.normal]
black = "#282a3a"
red = "#fd971f"
green = "#35b779"
yellow = "#fde724"
blue = "#31688e"
magenta = "#dc5fe6"
cyan = "#6ec9e0"
white = "#d4d9b8"

[colors.bright]
black = "#435663"
red = "#fd971f"
green = "#5dbd7a"
yellow = "#fde724"
blue = "#31688e"
magenta = "#dc5fe6"
cyan = "#6ec9e0"
white = "#fff8d4"
```

## Troubleshooting

### Colors not applying

1. Make sure you've reloaded the configuration (`Ctrl+Shift+R` or `Cmd+Shift+R`)
2. Check that the import path is correct
3. Verify your Alacritty version supports imports (v0.10.0+)

### Colors look different

- Ensure your terminal is running in true color mode
- Check that no other color scheme is being applied
- Verify monitor color calibration

## See Also

- [Main Entropy Theme Documentation](../../README.md)
- [Color Palette Reference](../../COLORS.md)
- [Alacritty Configuration Guide](https://alacritty.org/config-alacritty.html)

## License

MIT
