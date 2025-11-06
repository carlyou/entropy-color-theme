#!/bin/bash
# Quick installation script for Entropy theme in LazyVim

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
NVIM_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/nvim"
PLUGINS_DIR="$NVIM_CONFIG/lua/plugins"

echo "🎨 Entropy Theme - LazyVim Installation"
echo "========================================"
echo ""

# Check if LazyVim is installed
if [ ! -f "$NVIM_CONFIG/lazy-lock.json" ]; then
    echo "⚠️  Warning: LazyVim doesn't appear to be installed at $NVIM_CONFIG"
    read -p "Continue anyway? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi

# Create plugins directory if it doesn't exist
mkdir -p "$PLUGINS_DIR"

# Create the plugin configuration file
PLUGIN_FILE="$PLUGINS_DIR/entropy.lua"

echo "📝 Creating plugin configuration at $PLUGIN_FILE"

cat > "$PLUGIN_FILE" << EOF
return {
  -- Add the Entropy theme
  {
    dir = "$SCRIPT_DIR",
    name = "entropy",
    lazy = false,
    priority = 1000,
  },

  -- Configure LazyVim to use Entropy
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "entropy",
    },
  },
}
EOF

echo "✅ Installation complete!"
echo ""
echo "Next steps:"
echo "1. Restart Neovim"
echo "2. The Entropy theme should load automatically"
echo "3. If not, try running :Lazy sync in Neovim"
echo ""
echo "To manually change colorscheme in Neovim:"
echo "  :colorscheme entropy"
echo ""
echo "Configuration file created at:"
echo "  $PLUGIN_FILE"
