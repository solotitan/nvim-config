-- ============================================================================
-- Neovim Options - Clean and Minimal
-- ============================================================================

local opt = vim.opt

-- General
opt.mouse = "a"                     -- Enable mouse support
opt.clipboard = "unnamedplus"       -- Use system clipboard
opt.swapfile = false               -- Disable swap files
opt.backup = false                 -- Disable backup files
opt.undofile = true                -- Enable persistent undo
opt.updatetime = 250               -- Faster completion
opt.timeoutlen = 300               -- Faster key sequence completion

-- UI
opt.number = true                  -- Show line numbers
opt.relativenumber = true          -- Show relative line numbers
opt.cursorline = true              -- Highlight current line
opt.signcolumn = "yes"             -- Always show sign column
opt.wrap = false                   -- Disable line wrapping
opt.scrolloff = 8                  -- Keep 8 lines above/below cursor
opt.sidescrolloff = 8              -- Keep 8 columns left/right of cursor
opt.colorcolumn = "80"             -- Show column at 80 characters
opt.termguicolors = true           -- Enable 24-bit RGB colors

-- Indentation
opt.tabstop = 4                    -- Number of spaces for tab
opt.shiftwidth = 4                 -- Number of spaces for indentation
opt.expandtab = true               -- Use spaces instead of tabs
opt.autoindent = true              -- Auto indent new lines
opt.smartindent = true             -- Smart indentation

-- Search
opt.ignorecase = true              -- Ignore case in search
opt.smartcase = true               -- Case sensitive if uppercase present
opt.hlsearch = false               -- Don't highlight search results
opt.incsearch = true               -- Incremental search

-- Splits
opt.splitbelow = true              -- Horizontal splits go below
opt.splitright = true              -- Vertical splits go right

-- Completion
opt.completeopt = "menu,menuone,noselect"

-- File encoding
opt.fileencoding = "utf-8"

-- Folding (disabled by default)
opt.foldenable = false
