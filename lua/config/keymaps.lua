-- ============================================================================
-- Custom Keymaps - QWERTY Layout
-- ============================================================================

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- ============================================================================
-- WINDOW MANAGEMENT (s prefix)
-- ============================================================================

-- Window splits
keymap.set("n", "sp", ":split<CR>", { noremap = true, silent = true, desc = "Horizontal split" })
keymap.set("n", "sv", ":vsplit<CR>", { noremap = true, silent = true, desc = "Vertical split" })

-- Window navigation (QWERTY - hjkl pattern)
keymap.set("n", "sh", "<C-w>h", { desc = "Move to left window" })
keymap.set("n", "sk", "<C-w>k", { desc = "Move to up window" })
keymap.set("n", "sj", "<C-w>j", { desc = "Move to down window" })
keymap.set("n", "sl", "<C-w>l", { desc = "Move to right window" })

-- Window resizing
keymap.set("n", "<C-w><left>", "<C-w><", { desc = "Decrease width" })
keymap.set("n", "<C-w><right>", "<C-w>>", { desc = "Increase width" })
keymap.set("n", "<C-w><up>", "<C-w>+", { desc = "Increase height" })
keymap.set("n", "<C-w><down>", "<C-w>-", { desc = "Decrease height" })

-- ============================================================================
-- TAB MANAGEMENT
-- ============================================================================

keymap.set("n", "ti", ":tabedit ", { desc = "New tab" })
keymap.set("n", "<Tab>", ":tabnext<CR>", opts)
keymap.set("n", "<S-Tab>", ":tabprev<CR>", opts)

-- ============================================================================
-- EDITING OPERATIONS
-- ============================================================================

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- Delete without affecting registers
keymap.set("n", "x", '"_x', { desc = "Delete char without register" })
keymap.set("n", "<leader>d", '"_d', { desc = "Delete without register" })
keymap.set("n", "<leader>D", '"_D', { desc = "Delete line without register" })
keymap.set("v", "<leader>d", '"_d', { desc = "Delete selection without register" })

-- Change without affecting registers
keymap.set("n", "<leader>c", '"_c', { desc = "Change without register" })
keymap.set("n", "<leader>C", '"_C', { desc = "Change line without register" })
keymap.set("v", "<leader>c", '"_c', { desc = "Change selection without register" })

-- Paste from register 0 (last yank)
keymap.set("n", "<leader>p", '"0p', { desc = "Paste from yank register" })
keymap.set("n", "<leader>P", '"0P', { desc = "Paste before from yank register" })
keymap.set("v", "<leader>p", '"0p', { desc = "Paste from yank register" })

-- Delete word backwards
keymap.set("n", "db", 'vb"_d', { desc = "Delete word backwards" })

-- ============================================================================
-- NAVIGATION
-- ============================================================================

-- Better line navigation
keymap.set("n", "j", "gj", { desc = "Move down visual line" })
keymap.set("n", "k", "gk", { desc = "Move up visual line" })

-- Center screen on navigation
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down and center" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up and center" })
keymap.set("n", "n", "nzzzv", { desc = "Next search result and center" })
keymap.set("n", "N", "Nzzzv", { desc = "Previous search result and center" })

-- ============================================================================
-- QUALITY OF LIFE
-- ============================================================================

-- Clear search highlighting
keymap.set("n", "<Esc>", ":nohlsearch<CR>", opts)

-- Better indenting in visual mode
keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

-- Move lines up/down in visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Keep cursor in place when joining lines
keymap.set("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })

-- ============================================================================
-- DIAGNOSTICS (when LSP is available)
-- ============================================================================

keymap.set("n", "<C-n>", function()
    vim.diagnostic.goto_next()
end, { desc = "Next diagnostic" })

keymap.set("n", "<C-p>", function()
    vim.diagnostic.goto_prev()
end, { desc = "Previous diagnostic" })

keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic" })
keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Diagnostic quickfix" })

-- ============================================================================
-- DASHBOARD AND THEME MANAGEMENT
-- ============================================================================

-- Dashboard
keymap.set("n", "<leader>h", ":Dashboard<CR>", { desc = "Open Dashboard" })

-- Theme switching (DOOM arsenal)
keymap.set("n", "<leader>t1", function() vim.cmd("colorscheme doom-one") end, { desc = "DOOM One theme" })
keymap.set("n", "<leader>t2", function() vim.cmd("colorscheme tokyonight-storm") end, { desc = "Tokyo Night Storm" })
keymap.set("n", "<leader>t3", function() vim.cmd("colorscheme tokyonight-moon") end, { desc = "Tokyo Night Moon" })
keymap.set("n", "<leader>t4", function() vim.cmd("colorscheme gruvbox") end, { desc = "Gruvbox Dark" })
keymap.set("n", "<leader>t5", function() vim.cmd("colorscheme catppuccin") end, { desc = "Catppuccin Mocha" })
keymap.set("n", "<leader>t6", function() vim.cmd("colorscheme kanagawa") end, { desc = "Kanagawa Wave" })

-- Plugin management shortcuts
keymap.set("n", "<leader>pu", ":Lazy update<CR>", { desc = "Update plugins" })
keymap.set("n", "<leader>ps", ":Lazy sync<CR>", { desc = "Sync plugins" })
keymap.set("n", "<leader>pc", ":Lazy clean<CR>", { desc = "Clean plugins" })
keymap.set("n", "<leader>pp", ":Lazy profile<CR>", { desc = "Plugin profile" })
keymap.set("n", "<leader>pi", ":Lazy install<CR>", { desc = "Install plugins" })

-- ============================================================================
-- SNACKS PICKER - File Navigation
-- ============================================================================

-- File operations using snacks picker
keymap.set("n", ";f", function() require("snacks").picker.files() end, { desc = "Find files" })
keymap.set("n", ";r", function() require("snacks").picker.recent() end, { desc = "Recent files" })
keymap.set("n", ";g", function() require("snacks").picker.grep() end, { desc = "Live grep" })
keymap.set("n", ";b", function() require("snacks").picker.buffers() end, { desc = "Buffers" })
keymap.set("n", ";;", function() require("snacks").picker.resume() end, { desc = "Resume picker" })

-- Git operations using snacks picker (if available)
keymap.set("n", "<leader>gc", function() require("snacks").picker.git_commits() end, { desc = "Git commits" })
keymap.set("n", "<leader>gs", function() require("snacks").picker.git_status() end, { desc = "Git status" })

-- ============================================================================
-- VIM COACH - Command Reference
-- ============================================================================

-- Main vim coach interface
keymap.set("n", "<leader>?", "<cmd>VimCoach<cr>", { desc = "Vim Coach - All Commands" })

-- Category-specific vim coach commands
keymap.set("n", "<leader>hm", "<cmd>VimCoach motions<cr>", { desc = "Vim Coach - Motion Commands" })
keymap.set("n", "<leader>he", "<cmd>VimCoach editing<cr>", { desc = "Vim Coach - Editing Commands" })
keymap.set("n", "<leader>hv", "<cmd>VimCoach visual<cr>", { desc = "Vim Coach - Visual Mode Commands" })
keymap.set("n", "<leader>hp", "<cmd>VimCoach plugins<cr>", { desc = "Vim Coach - Plugin Commands" })
keymap.set("n", "<leader>hh", "<cmd>VimCoach all<cr>", { desc = "Vim Coach - All Commands" })

-- ============================================================================
-- NOTES
-- ============================================================================
-- QWERTY Key Mappings:
-- sh → left window
-- sk → up window  
-- sj → down window
-- sl → right window
-- sp → split horizontal
-- sv → split vertical
-- ti → new tab
--
-- Vim Coach Keybindings:
-- <leader>? → Comprehensive command search
-- <leader>hm → Motion commands (h,j,k,l,w,b,f,etc.)
-- <leader>he → Editing commands (i,a,d,c,y,p,etc.)
-- <leader>hv → Visual mode commands
-- <leader>hp → Plugin-specific commands
-- <leader>hh → All commands (same as <leader>?)
