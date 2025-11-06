# Easy Installation Guide

## Neovim with LazyVim

### Method 1: Direct GitHub Install (Recommended)

Create `~/.config/nvim/lua/plugins/entropy.lua`:

```lua
return {
  {
    "carlyou/entropy-color-theme",
    name = "entropy",
    lazy = false,
    priority = 1000,
    config = function()
      -- Add the neovim port to runtimepath
      vim.opt.rtp:append(vim.fn.stdpath("data") .. "/lazy/entropy-color-theme/ports/neovim")
      require("entropy").setup()
      vim.cmd([[colorscheme entropy]])
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "entropy",
    },
  },
}
```

That's it! Restart Neovim and the theme will be automatically downloaded and activated.

### Method 2: One-Line Install

Or use this simplified version:

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

### How it works

- LazyVim clones the repo to `~/.local/share/nvim/lazy/entropy-color-theme/`
- We append `ports/neovim` to the runtime path
- Then load the colorscheme normally

### Troubleshooting

If you get errors, try:
```vim
:Lazy sync
:Lazy reload entropy-color-theme
```

Then restart Neovim.

---

## WezTerm

Add to your `~/.config/wezterm/wezterm.lua`:

```lua
-- Clone the repo first:
-- git clone https://github.com/carlyou/entropy-color-theme ~/.config/wezterm/entropy-color-theme

local wezterm = require('wezterm')
local config = wezterm.config_builder()

-- Load Entropy colors
local entropy = dofile(wezterm.config_dir .. '/entropy-color-theme/ports/wezterm/entropy.lua')
config.colors = entropy.colors()

return config
```

Or copy just the color file:
```bash
curl -o ~/.config/wezterm/entropy.lua https://raw.githubusercontent.com/carlyou/entropy-color-theme/main/ports/wezterm/entropy.lua
```

Then:
```lua
local entropy = require('entropy')
config.colors = entropy.colors()
```

---

## VS Code

1. **Clone the theme**:
   ```bash
   git clone https://github.com/carlyou/entropy-color-theme \
     ~/.vscode/extensions/entropy-color-theme
   ```

2. **Restart VS Code**

3. **Activate**: Press `Ctrl+K Ctrl+T` and select "Entropy"

Or wait for it to be published to the VS Code Marketplace!

---

## Alacritty

```bash
# Download the color scheme
mkdir -p ~/.config/alacritty
curl -o ~/.config/alacritty/entropy.yml \
  https://raw.githubusercontent.com/carlyou/entropy-color-theme/main/ports/alacritty/entropy.yml
```

Then add to your `~/.config/alacritty/alacritty.yml`:

```yaml
import:
  - ~/.config/alacritty/entropy.yml
```

---

## Quick Install All (One-Liner)

```bash
# Clone the repo to a standard location
git clone https://github.com/carlyou/entropy-color-theme ~/.config/entropy-color-theme
```

Then follow the specific installation for each app from the main repo at `~/.config/entropy-color-theme/`.
