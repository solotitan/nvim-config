-- ============================================================================
-- Vim Coach - Personal Vim Command Reference
-- ============================================================================

return {
  -- Snacks.nvim - Required dependency for vim-coach
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      -- Enable picker for vim-coach
      picker = {
        enabled = true,
        win = {
          input = {
            keys = {
              ["<C-c>"] = { "close", mode = { "i", "n" } },
              ["<Esc>"] = { "close", mode = { "i", "n" } },
            },
          },
        },
      },
      -- Other snacks features you might want
      bigfile = { enabled = true },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
    },
  },

  -- Vim Coach - Comprehensive Vim command reference
  {
    "shahshlok/vim-coach.nvim",
    dependencies = {
      "folke/snacks.nvim",
    },
    keys = {
      -- Main vim coach command
      { "<leader>?", "<cmd>VimCoach<cr>", desc = "Vim Coach - All Commands" },
      
      -- Category-specific commands
      { "<leader>hm", "<cmd>VimCoach motions<cr>", desc = "Vim Coach - Motion Commands" },
      { "<leader>he", "<cmd>VimCoach editing<cr>", desc = "Vim Coach - Editing Commands" },
      { "<leader>hv", "<cmd>VimCoach visual<cr>", desc = "Vim Coach - Visual Mode Commands" },
      { "<leader>hp", "<cmd>VimCoach plugins<cr>", desc = "Vim Coach - Plugin Commands" },
      { "<leader>hh", "<cmd>VimCoach all<cr>", desc = "Vim Coach - All Commands" },
    },
    config = function()
      require("vim-coach").setup({
        window = {
          border = "rounded",
          title_pos = "center",
        },
        keymaps = {
          copy_keymap = "<C-y>",
          close = "<Esc>",
        },
      })
    end,
  },
}
