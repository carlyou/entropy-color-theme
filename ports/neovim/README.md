# Entropy - Neovim Port

A modern color theme for Neovim inspired by the viridis colormap and natural earth tones.

## Features

- 🎨 Carefully selected colors based on viridis (perceptually uniform, colorblind-friendly)
- 🌿 Warm, earthy tones for comfortable long-term viewing
- ✨ Full support for modern Neovim features:
  - Treesitter syntax highlighting
  - LSP diagnostics and semantic tokens
  - Built-in terminal colors
- 🔌 Plugin support:
  - Telescope
  - NvimTree / Neo-tree
  - GitSigns
  - WhichKey
  - And more!

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  dir = "/home/user/entropy-color-theme/ports/neovim",
  name = "entropy",
  lazy = false,
  priority = 1000,
  config = function()
    require("entropy").setup()
    vim.cmd([[colorscheme entropy]])
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "/home/user/entropy-color-theme/ports/neovim",
  as = "entropy",
  config = function()
    require("entropy").setup()
    vim.cmd([[colorscheme entropy]])
  end
}
```

### Manual Installation

1. Copy the `entropy` directory to your Neovim configuration:
   ```bash
   # Unix/Linux/macOS
   cp -r ports/neovim/lua/entropy ~/.config/nvim/lua/
   cp ports/neovim/colors/entropy.lua ~/.config/nvim/colors/
   ```

2. Add to your `init.lua`:
   ```lua
   require("entropy").setup()
   vim.cmd([[colorscheme entropy]])
   ```

   Or in `init.vim`:
   ```vim
   lua require("entropy").setup()
   colorscheme entropy
   ```

## Color Palette

### Deep Night (Backgrounds)
- `entropy0` (#282a3a) - Darkest background
- `entropy1` (#313647) - Dark background
- `entropy2` (#3a3f54) - Elevated background
- `entropy3` (#435663) - Selection, borders

### Verdant (Greens/Teals)
- `entropy4` (#31688e) - Deep teal
- `entropy5` (#35b779) - Vibrant teal-green
- `entropy6` (#5dbd7a) - Medium green
- `entropy7` (#a3b087) - Sage green

### Luminance (Bright Text)
- `entropy8` (#b8c5a0) - Light sage
- `entropy9` (#d4d9b8) - Pale green-cream (primary text)
- `entropy10` (#e8e5c8) - Warm cream
- `entropy11` (#fff8d4) - Brightest cream

### Aurora (Accents)
- `entropy12` (#fde724) - Viridis yellow
- `entropy13` (#fd971f) - Orange
- `entropy14` (#dc5fe6) - Purple
- `entropy15` (#6ec9e0) - Cyan

## Customization

You can access the color palette in your configuration:

```lua
local colors = require("entropy.colors")

-- Use individual colors
print(colors.entropy5)  -- "#35b779"

-- Use semantic mappings
print(colors.bg.primary)     -- Background color
print(colors.fg.primary)     -- Foreground color
print(colors.syntax.keyword) -- Keyword color
```

## Screenshots

TODO: Add screenshots once theme is tested

## Contributing

Found an issue or want to improve the theme? Please open an issue or PR in the main repository.

## License

MIT
