# Vim Coach Setup Guide

## What Was Added

I've successfully integrated **vim-coach.nvim** with **snacks.picker** into your Neovim configuration!

### Files Modified/Created:

1. **`lua/plugins/vim-coach.lua`** - New plugin configuration
2. **`lua/config/keymaps.lua`** - Added vim-coach keybindings documentation

## Installation Steps

### 1. Install the Plugins
Open Neovim and run:
```vim
:Lazy sync
```

This will install:
- `folke/snacks.nvim` (dependency)
- `shahshlok/vim-coach.nvim` (main plugin)

### 2. Restart Neovim
After installation completes, restart Neovim to ensure everything loads properly.

## Usage

### Keybindings Added:

| Key | Command | Description |
|-----|---------|-------------|
| `<leader>?` | `:VimCoach` | Open comprehensive command search |
| `<leader>hm` | `:VimCoach motions` | Motion commands (h,j,k,l,w,b,f,etc.) |
| `<leader>he` | `:VimCoach editing` | Editing commands (i,a,d,c,y,p,etc.) |
| `<leader>hv` | `:VimCoach visual` | Visual mode commands |
| `<leader>hp` | `:VimCoach plugins` | Plugin-specific commands |
| `<leader>hh` | `:VimCoach all` | All commands (same as `<leader>?`) |

### In the Picker Interface:

| Key | Action |
|-----|--------|
| `Enter` | Copy keybind to clipboard |
| `Ctrl+Y` | Copy keybind to clipboard |
| `Esc` | Close picker |

## Features You'll Get

- 🔍 **Fuzzy searchable** - Find any command instantly
- 📚 **120+ commands** - Comprehensive Vim command coverage
- 🎓 **Beginner-focused** - Detailed explanations with "when to use" guidance
- 🌐 **Context-aware** - Different explanations for file vs explorer contexts
- 💡 **Coaching tips** - Learn WHY and WHEN to use each command
- 📋 **Copy keybinds** - Easy copying to clipboard
- 📱 **Modern UI** - Clean snacks.picker interface with text wrapping

## Snacks.nvim Bonus Features

The snacks.nvim dependency also provides additional features:
- **bigfile** - Better handling of large files
- **notifier** - Enhanced notifications
- **quickfile** - Faster file operations
- **statuscolumn** - Improved status column
- **words** - Word highlighting

## Testing

After installation, try:
1. Press `<leader>?` to open the main vim coach interface
2. Search for "delete" to see delete-related commands
3. Press `<leader>hm` to see just motion commands
4. Use `Enter` or `Ctrl+Y` to copy a keybind

## Troubleshooting

If you encounter issues:
1. Run `:checkhealth` to verify plugin installation
2. Check `:Lazy` to ensure both plugins are installed
3. Restart Neovim completely
4. Check for any error messages during startup

Enjoy your new Vim coaching system! 🎯
