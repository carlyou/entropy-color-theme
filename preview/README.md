# Preview Files

This directory contains sample code files to demonstrate the Entropy color theme's syntax highlighting.

## Files

- **sample.py** - Python syntax demonstration
- **sample.js** - JavaScript/TypeScript syntax demonstration

## How to Preview

### In Neovim

1. Install the Entropy theme (see `/ports/neovim/README.md`)
2. Open any of the sample files:
   ```bash
   nvim preview/sample.py
   nvim preview/sample.js
   ```

### What to Look For

The preview files demonstrate various syntax elements:

- **Keywords** (Purple) - `class`, `def`, `if`, `for`, `async`, etc.
- **Functions** (Deep Teal) - Function names and calls
- **Variables** (Medium Green) - Variable names and properties
- **Strings** (Cyan) - String literals and templates
- **Numbers** (Orange) - Numeric literals
- **Comments** (Sage Green) - Single and multi-line comments
- **Constants** (Yellow) - Constants and special values
- **Types** (Warm Cream) - Type annotations and class names

## Testing Checklist

When previewing the theme, check:

- [ ] Background color is comfortable for long viewing
- [ ] Text is clearly readable with good contrast
- [ ] Syntax highlighting helps distinguish code elements
- [ ] Comments are visible but appropriately muted
- [ ] Strings and keywords are easily distinguishable
- [ ] No colors are too bright or harsh
- [ ] UI elements (line numbers, status line) are visible but not distracting
- [ ] Cursor is clearly visible
- [ ] Selection highlighting is distinct
- [ ] Search highlights are prominent

## Feedback

If you notice any issues or have suggestions for color adjustments, please open an issue in the main repository.
