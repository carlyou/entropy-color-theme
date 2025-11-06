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

### LazyVim (Recommended)

Create `~/.config/nvim/lua/plugins/entropy.lua`:

```lua
return {
  {
    "carlyou/entropy-color-theme",
    lazy = false,
    priority = 1000,
    config = function()
      local data_path = vim.fn.stdpath("data")
      local entropy_path = data_path .. "/lazy/entropy-color-theme/ports/neovim"
      vim.opt.rtp:append(entropy_path)
    end,
  },

  -- Set as default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "entropy",
    },
  },
}
```

**That's it!** Restart Neovim, run `:Lazy sync`, and the theme will be automatically downloaded and activated.

**Note:** When testing from a development branch, add `branch = "branch-name"` to the plugin spec.

### Manual Installation

Run the install script from the repo:

```bash
cd /path/to/entropy-color-theme
./install-neovim.sh
```

Then set the colorscheme in your LazyVim config:

```lua
return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "entropy",
    },
  },
}
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

## Troubleshooting

### Theme not loading in LazyVim

1. **Check the plugin file exists**:
   ```bash
   ls ~/.config/nvim/lua/plugins/entropy.lua
   ```

2. **Verify the path is correct**:
   - Open the plugin file and make sure the `dir` path points to the correct location
   - The path should be absolute or use `vim.fn.expand()`

3. **Try syncing plugins**:
   - Open Neovim
   - Run `:Lazy sync`
   - Restart Neovim

4. **Manually set the colorscheme**:
   ```vim
   :colorscheme entropy
   ```

5. **Check for errors**:
   ```vim
   :messages
   :Lazy log
   ```

### Colors look wrong

- Ensure `termguicolors` is enabled:
  ```lua
  vim.opt.termguicolors = true
  ```

- Check your terminal supports 24-bit true color
- For tmux, ensure your config has:
  ```
  set -g default-terminal "tmux-256color"
  set -ag terminal-overrides ",xterm-256color:RGB"
  ```

### Plugin highlights not working

Some plugins may need to be reloaded after changing themes. Try:
```vim
:Lazy reload entropy
```

Or restart Neovim.

## Screenshots

TODO: Add screenshots once theme is tested

## Contributing

Found an issue or want to improve the theme? Please open an issue or PR in the main repository.

## License

MIT
