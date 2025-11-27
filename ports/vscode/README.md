# Entropy - Visual Studio Code Port

A modern color theme for Visual Studio Code inspired by the viridis colormap and natural earth tones.

## Features

- 🎨 Perceptually uniform colors based on the viridis colormap
- 🌿 Warm, earthy tones for comfortable long-term viewing
- ✨ Full VS Code UI theming
- 🔍 Carefully designed syntax highlighting
- ♿ Colorblind-friendly palette
- 📊 Semantic highlighting support

## Installation

### Option 1: Manual Installation (Development)

1. Copy the theme directory to your VS Code extensions folder:

   **Windows:**
   ```powershell
   cp -r ports/vscode "$env:USERPROFILE\.vscode\extensions\entropy-theme-0.1.0"
   ```

   **macOS/Linux:**
   ```bash
   cp -r ports/vscode ~/.vscode/extensions/entropy-theme-0.1.0
   ```

2. Restart VS Code

3. Activate the theme:
   - Press `Ctrl+K Ctrl+T` (or `Cmd+K Cmd+T` on macOS)
   - Select "Entropy" from the list

### Option 2: Quick Preview

1. Open this directory in VS Code
2. Press `F5` to launch Extension Development Host
3. In the new window, activate the theme as described above

## Customization

You can customize any colors in your `settings.json`:

```json
{
  "workbench.colorCustomizations": {
    "[Entropy]": {
      "editor.background": "#1f2129",
      "terminal.foreground": "#e8e5c8"
    }
  },
  "editor.tokenColorCustomizations": {
    "[Entropy]": {
      "comments": "#a3b087",
      "strings": "#6ec9e0"
    }
  }
}
```

## Color Palette

### Backgrounds
- **Primary**: #282a3a (entropy0)
- **Secondary**: #313647 (entropy1)
- **Elevated**: #3a3f54 (entropy2)
- **Selection**: #435663 (entropy3)

### Foreground
- **Primary**: #d4d9b8 (entropy9)
- **Secondary**: #b8c5a0 (entropy8)
- **Emphasized**: #e8e5c8 (entropy10)
- **Bright**: #fff8d4 (entropy11)

### Syntax
- **Keywords**: #dc5fe6 (entropy14) - Purple
- **Functions**: #31688e (entropy4) - Deep teal
- **Variables**: #5dbd7a (entropy6) - Medium green
- **Strings**: #6ec9e0 (entropy15) - Cyan
- **Numbers**: #fd971f (entropy13) - Orange
- **Comments**: #a3b087 (entropy7) - Sage green
- **Constants**: #fde724 (entropy12) - Yellow

### UI States
- **Error**: #fd971f (entropy13)
- **Warning**: #fde724 (entropy12)
- **Info**: #6ec9e0 (entropy15)
- **Success**: #35b779 (entropy5)

## Recommended Settings

For the best experience with Entropy theme:

```json
{
  "editor.fontFamily": "'JetBrains Mono', 'Fira Code', Consolas, monospace",
  "editor.fontSize": 13,
  "editor.lineHeight": 20,
  "editor.fontLigatures": true,
  "editor.cursorStyle": "line",
  "editor.cursorBlinking": "smooth",
  "editor.renderLineHighlight": "all",
  "editor.bracketPairColorization.enabled": true,
  "workbench.tree.indent": 16,
  "window.titleBarStyle": "custom"
}
```

## Language Support

Entropy provides optimized syntax highlighting for:

- JavaScript/TypeScript
- Python
- Go
- Rust
- HTML/CSS/SCSS
- JSON/YAML
- Markdown
- And many more...

## Screenshots

TODO: Add screenshots once theme is tested

## Publishing to VS Code Marketplace

To publish this theme to the VS Code Marketplace:

1. Install vsce:
   ```bash
   npm install -g @vscode/vsce
   ```

2. Package the extension:
   ```bash
   cd ports/vscode
   vsce package
   ```

3. Publish:
   ```bash
   vsce publish
   ```

See [VS Code Publishing Extensions](https://code.visualstudio.com/api/working-with-extensions/publishing-extension) for more details.

## See Also

- [Main Entropy Theme Documentation](../../README.md)
- [Color Palette Reference](../../COLORS.md)
- [VS Code Theme Color Reference](https://code.visualstudio.com/api/references/theme-color)

## License

MIT
