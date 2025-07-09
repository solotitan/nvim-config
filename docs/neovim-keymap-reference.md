# Neovim Keymap Reference Guide

A comprehensive guide to Neovim keybindings, notation, and your custom Dvorak-optimized configuration.

## Table of Contents
- [Key Notation System](#key-notation-system)
- [Basic Movement](#basic-movement)
- [Editing Operations](#editing-operations)
- [Window Management](#window-management)
- [Tab Management](#tab-management)
- [Search and Navigation](#search-and-navigation)
- [LSP Features](#lsp-features)
- [Telescope (Fuzzy Finder)](#telescope-fuzzy-finder)
- [Git Operations](#git-operations)
- [Visual Mode](#visual-mode)
- [Registers and Clipboard](#registers-and-clipboard)
- [Undo/Redo](#undoredo)
- [Dvorak Physical Mappings](#dvorak-physical-mappings)

---

## Key Notation System

Neovim uses a specific notation for key combinations:

| Notation | Meaning | Example |
|----------|---------|---------|
| `<C-x>` | Ctrl + x | `<C-r>` = Ctrl + r |
| `<S-x>` | Shift + x | `<S-Tab>` = Shift + Tab |
| `<M-x>` or `<A-x>` | Alt + x | `<M-e>` = Alt + e |
| `<leader>` | Leader key (Space) | `<leader>f` = Space + f |
| `<CR>` | Enter/Return | |
| `<Esc>` | Escape key | |
| `<Tab>` | Tab key | |
| `<BS>` | Backspace | |

---

## Basic Movement

### Standard Vim Movement
| Key | Action | Description |
|-----|--------|-------------|
| `h` | ← | Move left |
| `j` | ↓ | Move down (visual line) |
| `k` | ↑ | Move up (visual line) |
| `l` | → | Move right |
| `w` | → | Next word |
| `b` | ← | Previous word |
| `e` | → | End of word |
| `0` | ← | Beginning of line |
| `$` | → | End of line |
| `gg` | ↑ | Top of file |
| `G` | ↓ | Bottom of file |

### Enhanced Navigation (Your Config)
| Key | Action | Description |
|-----|--------|-------------|
| `<C-d>` | ↓ | Half page down + center |
| `<C-u>` | ↑ | Half page up + center |
| `n` | → | Next search result + center |
| `N` | ← | Previous search result + center |

---

## Editing Operations

### Basic Editing
| Key | Action | Description |
|-----|--------|-------------|
| `i` | Insert | Insert before cursor |
| `a` | Insert | Insert after cursor |
| `o` | Insert | New line below |
| `O` | Insert | New line above |
| `x` | Delete | Delete character (no register) |
| `dd` | Delete | Delete line |
| `yy` | Copy | Yank (copy) line |
| `p` | Paste | Paste after cursor |
| `P` | Paste | Paste before cursor |

### Register-Safe Operations (Your Config)
| Key | Action | Description |
|-----|--------|-------------|
| `<leader>d` | Delete | Delete without affecting registers |
| `<leader>D` | Delete | Delete line without register |
| `<leader>c` | Change | Change without register |
| `<leader>C` | Change | Change line without register |
| `<leader>p` | Paste | Paste from yank register (0) |
| `<leader>P` | Paste | Paste before from yank register |
| `db` | Delete | Delete word backwards |

### Special Operations
| Key | Action | Description |
|-----|--------|-------------|
| `<C-a>` | Select | Select all text |
| `J` | Join | Join lines (keep cursor position) |

---

## Window Management (Your Custom 's' Prefix)

### Window Navigation
| Key | Action | Physical Keys (Dvorak) |
|-----|--------|------------------------|
| `sd` | ← | `oe` |
| `su` | ↑ | `og` |
| `st` | ↓ | `oh` |
| `sn` | → | `ob` |

### Window Splits
| Key | Action | Physical Keys (Dvorak) |
|-----|--------|------------------------|
| `sp` | Split horizontal | `or` |
| `sv` | Split vertical | `ow` |

### Window Resizing
| Key | Action |
|-----|--------|
| `<C-w><left>` | Decrease width |
| `<C-w><right>` | Increase width |
| `<C-w><up>` | Increase height |
| `<C-w><down>` | Decrease height |

---

## Tab Management

| Key | Action | Physical Keys (Dvorak) |
|-----|--------|------------------------|
| `ti` | New tab | `hc` |
| `<Tab>` | Next tab | |
| `<S-Tab>` | Previous tab | |
| `:bd` | Close buffer/tab | |

---

## Search and Navigation

### Search
| Key | Action | Description |
|-----|--------|-------------|
| `/` | Search forward | Type pattern + Enter |
| `?` | Search backward | Type pattern + Enter |
| `n` | Next result | Goes to next match + centers |
| `N` | Previous result | Goes to previous match + centers |
| `<Esc>` | Clear highlight | Remove search highlighting |

### File Navigation
| Key | Action | Description |
|-----|--------|-------------|
| `gd` | Go to definition | LSP: Jump to definition |
| `gD` | Go to declaration | LSP: Jump to declaration |
| `gi` | Go to implementation | LSP: Jump to implementation |
| `gr` | Go to references | LSP: Show references |

---

## LSP Features (Language Server Protocol)

### Information
| Key | Action | Description |
|-----|--------|-------------|
| `K` | Hover | Show documentation |
| `<C-k>` | Signature help | Show function signature |

### Actions
| Key | Action | Description |
|-----|--------|-------------|
| `<leader>rn` | Rename | Rename symbol |
| `<leader>ca` | Code action | Show available code actions |
| `<leader>f` | Format | Format code |

### Diagnostics
| Key | Action | Description |
|-----|--------|-------------|
| `<C-n>` | Next diagnostic | Go to next error/warning |
| `<C-p>` | Previous diagnostic | Go to previous error/warning |
| `<leader>e` | Show diagnostic | Show error details |
| `<leader>q` | Diagnostic list | Open diagnostic quickfix |

---

## Telescope (Fuzzy Finder)

### File Operations
| Key | Action | Description |
|-----|--------|-------------|
| `;f` | Find files | Search for files |
| `;r` | Live grep | Search in file contents |
| `;b` | Buffers | Switch between open buffers |
| `;h` | Help tags | Search help documentation |
| `;;` | Resume | Resume last telescope search |

### Git Operations
| Key | Action | Description |
|-----|--------|-------------|
| `<leader>gc` | Git commits | Browse git commit history |
| `<leader>gs` | Git status | Show git status |

### LSP Operations
| Key | Action | Description |
|-----|--------|-------------|
| `<leader>lr` | LSP references | Find references via telescope |
| `<leader>ld` | LSP definitions | Find definitions via telescope |
| `<leader>ls` | Document symbols | Browse document symbols |

---

## DOOM Dashboard

### Dashboard Access
| Key | Action | Description |
|-----|--------|-------------|
| `<leader>h` | Open Dashboard | Launch DOOM-themed welcome screen |

### Dashboard Quick Actions (When Dashboard is Open)
| Key | Action | Description |
|-----|--------|-------------|
| `1` | DOOM One | Switch to classic DOOM theme |
| `2` | Tokyo Night Storm | Switch to Tokyo Night Storm |
| `3` | Tokyo Night Moon | Switch to Tokyo Night Moon |
| `4` | Gruvbox Dark | Switch to Gruvbox theme |
| `5` | Catppuccin Mocha | Switch to Catppuccin theme |
| `6` | Kanagawa Wave | Switch to Kanagawa theme |
| `f` | Find Files | Open Telescope file finder |
| `r` | Recent Files | Show recently opened files |
| `t` | Find Text | Search in file contents |
| `c` | Configuration | Open Neovim config |
| `k` | Keymap Reference | Open this guide |
| `u` | Update Plugins | Update all plugins |
| `s` | Sync Plugins | Sync plugin state |
| `x` | Clean Plugins | Remove unused plugins |
| `p` | Plugin Profile | Show plugin performance |
| `q` | Quit | Exit Neovim |

---

## Theme Management

### Quick Theme Switching (From Anywhere)
| Key | Action | Description |
|-----|--------|-------------|
| `<leader>t1` | DOOM One | Classic DOOM red/orange theme |
| `<leader>t2` | Tokyo Night Storm | Dark blue cyberpunk theme |
| `<leader>t3` | Tokyo Night Moon | Darker blue variant |
| `<leader>t4` | Gruvbox | Retro warm dark theme |
| `<leader>t5` | Catppuccin | Modern pastel dark theme |
| `<leader>t6` | Kanagawa | Japanese-inspired theme |

---

## Plugin Management

### Lazy.nvim Commands
| Key | Action | Description |
|-----|--------|-------------|
| `<leader>pu` | Update plugins | Update all installed plugins |
| `<leader>ps` | Sync plugins | Sync plugin state |
| `<leader>pc` | Clean plugins | Remove unused plugins |
| `<leader>pp` | Plugin profile | Show startup performance |
| `<leader>pi` | Install plugins | Install missing plugins |

---

## Git Operations (GitSigns)

### Navigation
| Key | Action | Description |
|-----|--------|-------------|
| `]c` | Next hunk | Go to next git change |
| `[c` | Previous hunk | Go to previous git change |

### Actions
| Key | Action | Description |
|-----|--------|-------------|
| `<leader>hs` | Stage hunk | Stage current change |
| `<leader>hr` | Reset hunk | Reset current change |
| `<leader>hS` | Stage buffer | Stage entire file |
| `<leader>hu` | Undo stage | Undo staged hunk |
| `<leader>hR` | Reset buffer | Reset entire file |
| `<leader>hp` | Preview hunk | Preview change |
| `<leader>hd` | Diff this | Show diff |

---

## Visual Mode

### Selection
| Key | Action | Description |
|-----|--------|-------------|
| `v` | Visual | Character-wise selection |
| `V` | Visual Line | Line-wise selection |
| `<C-v>` | Visual Block | Block-wise selection |

### Operations in Visual Mode
| Key | Action | Description |
|-----|--------|-------------|
| `<` | Indent left | Indent left and reselect |
| `>` | Indent right | Indent right and reselect |
| `J` | Move down | Move selection down |
| `K` | Move up | Move selection up |
| `<leader>d` | Delete | Delete without register |
| `<leader>c` | Change | Change without register |
| `<leader>p` | Paste | Paste from yank register |

---

## Registers and Clipboard

### Understanding Registers
- **Default register (`"`)**: Stores last deleted/changed text
- **Yank register (`0`)**: Stores last yanked (copied) text
- **Black hole register (`_`)**: Discards text (doesn't store)

### Your Register-Safe Setup
| Operation | Normal Key | Register-Safe Key | Result |
|-----------|------------|-------------------|---------|
| Delete | `d` | `<leader>d` | Doesn't overwrite registers |
| Change | `c` | `<leader>c` | Doesn't overwrite registers |
| Paste | `p` | `<leader>p` | Always pastes last yank |

---

## Undo/Redo

### Basic Undo
| Key | Action | Description |
|-----|--------|-------------|
| `u` | Undo | Undo last change |
| `<C-r>` | Redo | Redo (undo the undo) |
| `U` | Undo line | Undo all changes on current line |

### Advanced Undo
| Command | Action | Description |
|---------|--------|-------------|
| `:earlier 5m` | Time travel | Go back 5 minutes |
| `:later 10s` | Time travel | Go forward 10 seconds |
| `:undolist` | Show tree | Display undo tree |
| `g-` | Older state | Go to older text state |
| `g+` | Newer state | Go to newer text state |

---

## Dvorak Physical Mappings

### Window Navigation (Physical Keys)
| Logical | Physical | Action |
|---------|----------|---------|
| `sd` | `oe` | Move to left window |
| `su` | `og` | Move to up window |
| `st` | `oh` | Move to down window |
| `sn` | `ob` | Move to right window |

### Window Splits (Physical Keys)
| Logical | Physical | Action |
|---------|----------|---------|
| `sp` | `or` | Horizontal split |
| `sv` | `ow` | Vertical split |

### Tab Management (Physical Keys)
| Logical | Physical | Action |
|---------|----------|---------|
| `ti` | `hc` | New tab |

---

## Tips and Tricks

### Efficient Editing
1. **Use `.` to repeat last action**
2. **Combine numbers with actions**: `3dd` deletes 3 lines
3. **Use `ci"` to change inside quotes**
4. **Use `va{` to select around braces**

### Search Tips
1. **Use `*` to search for word under cursor**
2. **Use `#` to search backwards for word under cursor**
3. **Use `/\c` for case-insensitive search**

### Window Management Tips
1. **Use `<C-w>=` to equalize window sizes**
2. **Use `<C-w>o` to close all other windows**
3. **Use `<C-w>T` to move window to new tab**

### LSP Tips
1. **Hover (`K`) twice to enter hover window**
2. **Use `<C-w>w` to navigate between LSP windows**
3. **Use `:LspRestart` if LSP stops working**

---

## Quick Reference Card

### Most Used Keys
```
Movement:     h j k l  w b  0 $  gg G
Edit:         i a o  x dd yy p
Window:       sd su st sn  sp sv
Search:       / ? n N
LSP:          gd K <leader>ca
Files:        ;f ;r ;b
Undo:         u <C-r>
```

### Emergency Commands
```
:q          - Quit
:q!         - Quit without saving
:w          - Save
:wq         - Save and quit
<Esc>       - Exit insert mode
<C-c>       - Alternative escape
```

---

*This reference covers your custom Dvorak-optimized Neovim configuration. Keep this handy while learning!*
