-- ============================================================================
-- Custom Neovim Configuration - Optimized for Dvorak Layout
-- ============================================================================

-- Set leader key early (before any plugins)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Load core configuration
require("config.options")
require("config.keymaps")
require("config.lazy")
