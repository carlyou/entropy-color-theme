# Entropy - WezTerm Port

A modern color theme for [WezTerm](https://wezfurlong.org/wezterm/) inspired by the viridis colormap and natural earth tones.

## Installation

### Option 1: Direct Import (Recommended)

1. Copy `entropy.lua` to your WezTerm configuration directory:
   ```bash
   # Unix/Linux/macOS
   cp entropy.lua ~/.config/wezterm/
   ```

2. In your `wezterm.lua` configuration file:
   ```lua
   local wezterm = require('wezterm')
   local entropy = require('entropy')

   local config = wezterm.config_builder()

   -- Apply Entropy color theme
   config.colors = entropy.colors()

   return config
   ```

### Option 2: Inline Configuration

Alternatively, you can copy the color values directly into your configuration:

```lua
local wezterm = require('wezterm')
local config = wezterm.config_builder()

config.colors = {
  foreground = "#d4d9b8",
  background = "#282a3a",

  cursor_bg = "#d4d9b8",
  cursor_fg = "#282a3a",
  cursor_border = "#d4d9b8",

  selection_bg = "#435663",
  selection_fg = "#fff8d4",

  ansi = {
    "#282a3a", "#fd971f", "#35b779", "#fde724",
    "#31688e", "#dc5fe6", "#6ec9e0", "#d4d9b8",
  },

  brights = {
    "#435663", "#fd971f", "#5dbd7a", "#fde724",
    "#31688e", "#dc5fe6", "#6ec9e0", "#fff8d4",
  },
}

return config
```

## Features

- Full ANSI color support (16 colors)
- Custom tab bar styling
- Cursor and selection colors
- Split separator colors
- Extended indexed colors for advanced use

## Color Mapping

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

### UI Elements

- **Foreground**: entropy9 (#d4d9b8) - Pale green-cream
- **Background**: entropy0 (#282a3a) - Darkest background
- **Selection**: entropy3 (#435663) background with entropy11 (#fff8d4) foreground
- **Cursor**: entropy9 (#d4d9b8) with inverted colors
- **Splits**: entropy3 (#435663) - Borders

## Customization

You can customize the theme by modifying the returned table from `entropy.colors()`:

```lua
local entropy = require('entropy')
local config = wezterm.config_builder()

local colors = entropy.colors()

-- Example: Make the background slightly darker
colors.background = "#1f2129"

-- Example: Change cursor color
colors.cursor_bg = "#35b779"

config.colors = colors

return config
```

## Additional Styling

For a complete Entropy look, consider these additional WezTerm settings:

```lua
local config = wezterm.config_builder()
local entropy = require('entropy')

config.colors = entropy.colors()

-- Font configuration
config.font = wezterm.font('JetBrains Mono', { weight = 'Regular' })
config.font_size = 12.0

-- Window appearance
config.window_padding = {
  left = 8,
  right = 8,
  top = 8,
  bottom = 8,
}

-- Tab bar
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

-- Window decorations
config.window_decorations = "RESIZE"

-- Scrollback
config.scrollback_lines = 10000

return config
```

## Screenshots

TODO: Add screenshots once theme is tested

## See Also

- [Main Entropy Theme Documentation](../../README.md)
- [Color Palette Reference](../../COLORS.md)
- [WezTerm Documentation](https://wezfurlong.org/wezterm/)

## License

MIT
