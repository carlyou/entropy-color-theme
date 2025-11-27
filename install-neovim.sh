#!/bin/bash
# Simple installation script for Entropy theme in Neovim

set -e

NVIM_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/nvim"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🎨 Entropy Theme - Neovim Installation"
echo "======================================"
echo ""

# Copy lua files
echo "📦 Copying Lua modules..."
mkdir -p "$NVIM_CONFIG/lua"
cp -r "$SCRIPT_DIR/ports/neovim/lua/entropy" "$NVIM_CONFIG/lua/"

# Copy colorscheme file
echo "🎨 Copying colorscheme..."
mkdir -p "$NVIM_CONFIG/colors"
cp "$SCRIPT_DIR/ports/neovim/colors/entropy.lua" "$NVIM_CONFIG/colors/"

echo ""
echo "✅ Installation complete!"
echo ""
echo "Files installed to:"
echo "  - $NVIM_CONFIG/lua/entropy/"
echo "  - $NVIM_CONFIG/colors/entropy.lua"
echo ""
echo "Now add to your LazyVim config (~/.config/nvim/lua/plugins/entropy.lua):"
echo ""
cat << 'EOF'
return {
  {
    "entropy",
    dir = vim.fn.stdpath("config") .. "/colors",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("entropy")
    end,
  },
}
EOF
echo ""
