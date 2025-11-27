# Quick Installation Guide

## Neovim (LazyVim)

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

Restart Neovim and run `:Lazy sync`. Done!

## Other Applications

See the individual port directories for installation instructions:

- **WezTerm**: [ports/wezterm/README.md](ports/wezterm/README.md)
- **VS Code**: [ports/vscode/README.md](ports/vscode/README.md)
- **Alacritty**: [ports/alacritty/README.md](ports/alacritty/README.md)
