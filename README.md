# Entropy Color Theme

A modern color theme inspired by the viridis colormap and natural earth tones, designed for comfortable long-term viewing across various applications.

## Philosophy

Entropy combines the scientifically-designed viridis color palette (perceptually uniform and colorblind-friendly) with warm, earthy tones to create a theme that is both functional and aesthetically pleasing.

## Color Palette

The theme consists of 16 carefully selected colors organized into four semantic palettes:

- **Deep Night** (entropy0-3): Background colors, dark foundation
- **Verdant** (entropy4-7): Green and teal tones, primary UI elements
- **Luminance** (entropy8-11): Bright text and highlight colors
- **Aurora** (entropy12-15): Accent and syntax highlighting colors

See [src/entropy.yml](src/entropy.yml) for the complete color specification.

## Structure

```
entropy-color-theme/
├── src/
│   └── entropy.yml          # Base color definitions
├── ports/
│   ├── neovim/              # Neovim/vim port
│   ├── wezterm/             # WezTerm terminal port
│   ├── vscode/              # VS Code port
│   └── ...                  # Additional application ports
└── README.md
```

## Available Ports

- ✅ **[Neovim](ports/neovim/)** - Full support for Treesitter, LSP, and popular plugins
- ✅ **[WezTerm](ports/wezterm/)** - Complete terminal color scheme with tab bar styling
- ✅ **[VS Code](ports/vscode/)** - Comprehensive editor and UI theming
- ✅ **[Alacritty](ports/alacritty/)** - Terminal color scheme with YAML/TOML support
- 🔄 Kitty - Coming soon
- 🔄 Tmux - Coming soon
- 🔄 Zellij - Coming soon

## Quick Start

### Neovim (LazyVim)

Create `~/.config/nvim/lua/plugins/entropy.lua`:

```lua
return {
  {
    "carlyou/entropy-color-theme",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.rtp:append(vim.fn.stdpath("data") .. "/lazy/entropy-color-theme/ports/neovim")
      vim.cmd.colorscheme("entropy")
    end,
  },
}
```

Restart Neovim - done!

### WezTerm
```lua
local entropy = require('entropy')
config.colors = entropy.colors()
```

### VS Code
Copy to `~/.vscode/extensions/entropy-theme-0.1.0` and select "Entropy" from the theme picker.

### Alacritty
```yaml
import:
  - ~/.config/alacritty/entropy.yml
```

See individual port directories for detailed installation instructions and customization options.

## License

MIT
