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

## Ports

- [x] Neovim
- [ ] WezTerm
- [ ] VS Code
- [ ] Alacritty
- [ ] Kitty
- [ ] Tmux

## Installation

See individual port directories for installation instructions.

## License

MIT
