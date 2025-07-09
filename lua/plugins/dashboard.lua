-- ============================================================================
-- DOOM-Themed Dashboard Configuration
-- ============================================================================

return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local dashboard = require("dashboard")
      
      -- Duke Nukem quotes with themed emojis
      local duke_quotes = {
        { text = "Hail to the king, baby!", emoji = "👑" },
        { text = "Come get some!", emoji = "💥" },
        { text = "It's time to kick ass and chew bubblegum... and I'm all outta gum", emoji = "🦵" },
        { text = "Damn, I'm good!", emoji = "😎" },
        { text = "Groovy!", emoji = "🕺" },
        { text = "Let God sort 'em out!", emoji = "⚰️" },
        { text = "Nobody steals our chicks... and lives!", emoji = "🔫" },
        { text = "I've got balls of steel!", emoji = "⚙️" },
        { text = "Blow it out your ass!", emoji = "💨" },
        { text = "Time to die!", emoji = "☠️" },
        { text = "Eat this!", emoji = "🍽️" },
        { text = "Your face, your ass - what's the difference?", emoji = "🤔" },
        { text = "Ready for action!", emoji = "🎯" },
        { text = "Let's rock!", emoji = "🎸" },
        { text = "I'm gonna rip your head off and shit down your neck!", emoji = "💀" },
      }

      -- Function to get random Duke quote with emojis
      local function get_random_duke_quote()
        math.randomseed(os.time())
        local quote = duke_quotes[math.random(#duke_quotes)]
        return quote.emoji .. " " .. quote.text .. " " .. quote.emoji
      end

      -- Dynamic DUKE NUKEM ASCII Art with random Duke quote
      local function generate_duke_logo()
        return {
          "",
          "    ██████╗ ██╗   ██╗██╗  ██╗███████╗    ███╗   ██╗██╗   ██╗██╗  ██╗███████╗███╗   ███╗",
          "    ██╔══██╗██║   ██║██║ ██╔╝██╔════╝    ████╗  ██║██║   ██║██║ ██╔╝██╔════╝████╗ ████║",
          "    ██║  ██║██║   ██║█████╔╝ █████╗      ██╔██╗ ██║██║   ██║█████╔╝ █████╗  ██╔████╔██║",
          "    ██║  ██║██║   ██║██╔═██╗ ██╔══╝      ██║╚██╗██║██║   ██║██╔═██╗ ██╔══╝  ██║╚██╔╝██║",
          "    ██████╔╝╚██████╔╝██║  ██╗███████╗    ██║ ╚████║╚██████╔╝██║  ██╗███████╗██║ ╚═╝ ██║",
          "    ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝    ╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝",
          "",
          "" .. get_random_duke_quote(),
          "",
        }
      end

      -- Theme persistence functions
      local theme_file = vim.fn.stdpath("data") .. "/current_theme.txt"
      
      local function save_theme(theme_name)
        local file = io.open(theme_file, "w")
        if file then
          file:write(theme_name)
          file:close()
        end
      end
      
      local function load_theme()
        local file = io.open(theme_file, "r")
        if file then
          local theme = file:read("*all"):gsub("%s+", "") -- Remove whitespace
          file:close()
          if theme and theme ~= "" then
            return theme
          end
        end
        return "tokyonight-storm" -- Default fallback
      end

      -- Custom theme switching function with persistence
      local function switch_theme(theme_name)
        return function()
          vim.cmd("colorscheme " .. theme_name)
          save_theme(theme_name)
          vim.notify("🎨 Switched to " .. theme_name .. " (saved)", vim.log.levels.INFO)
        end
      end

      -- Plugin management functions
      local function lazy_update()
        vim.cmd("Lazy update")
      end

      local function lazy_sync()
        vim.cmd("Lazy sync")
      end

      local function lazy_clean()
        vim.cmd("Lazy clean")
      end

      local function lazy_profile()
        vim.cmd("Lazy profile")
      end

      -- File operations
      local function find_files()
        vim.cmd("Telescope find_files")
      end

      local function recent_files()
        vim.cmd("Telescope oldfiles")
      end

      local function find_text()
        vim.cmd("Telescope live_grep")
      end

      local function open_config()
        vim.cmd("edit ~/.config/nvim/init.lua")
      end

      local function open_keymap_guide()
        vim.cmd("edit " .. vim.fn.stdpath("config") .. "/../Projects/nvim-docs/neovim-keymap-reference.md")
      end

      dashboard.setup({
        theme = "doom",
        config = {
          header = generate_duke_logo(),
          center_pad = 1, -- Reduce padding around center items
          footer_pad = 1, -- Reduce padding around footer
          center = {
            -- Clean vertical menu inspired by jdhao's config
            {
              icon = "🔍 ",
              desc = "Find Files",
              key = "f",
              action = find_files,
            },
            {
              icon = "📄 ",
              desc = "Recent Files",
              key = "r",
              action = recent_files,
            },
            {
              icon = "⚙️ ",
              desc = "Configuration",
              key = "c",
              action = open_config,
            },
            {
              icon = "🎨 ",
              desc = "Switch Theme",
              key = "t",
              action = function()
                -- Cycle through themes
                local themes = {
                  "doom-one",
                  "tokyonight-storm", 
                  "tokyonight-moon",
                  "gruvbox",
                  "catppuccin",
                  "kanagawa"
                }
                local current_theme = load_theme()
                local current_index = 1
                
                -- Find current theme index
                for i, theme in ipairs(themes) do
                  if theme == current_theme then
                    current_index = i
                    break
                  end
                end
                
                -- Get next theme (cycle back to 1 if at end)
                local next_index = current_index % #themes + 1
                local next_theme = themes[next_index]
                
                vim.cmd("colorscheme " .. next_theme)
                save_theme(next_theme)
                vim.notify("🎨 Switched to " .. next_theme .. " (saved)", vim.log.levels.INFO)
              end,
            },
            {
              icon = "🔄 ",
              desc = "Update Plugins",
              key = "u",
              action = lazy_update,
            },
            {
              icon = "💀 ",
              desc = "Quit Neovim",
              key = "q",
              action = "qa",
            },
          },
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return {
              "",
              "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms",
              "🔥 " .. os.date("%Y-%m-%d") .. " | Ready to RIP AND TEAR! 🔥"
            }
          end,
        },
      })

      -- Custom highlight groups for DOOM theme
      vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#ff6c6b", bold = true })
      vim.api.nvim_set_hl(0, "DashboardCenter", { fg = "#98be65" })
      vim.api.nvim_set_hl(0, "DashboardShortcut", { fg = "#51afef", bold = true })
      vim.api.nvim_set_hl(0, "DashboardFooter", { fg = "#5B6268", italic = true })

      -- Defer theme loading until after all plugins are loaded
      vim.defer_fn(function()
        local saved_theme = load_theme()
        
        -- Only set colorscheme if it's available
        local ok, _ = pcall(vim.cmd.colorscheme, saved_theme)
        if not ok then
          -- Fallback to a basic theme if saved theme isn't available
          vim.notify("⚠️  Theme '" .. saved_theme .. "' not found, using fallback", vim.log.levels.WARN)
          pcall(vim.cmd.colorscheme, "tokyonight-storm")
        end
      end, 100) -- Wait 100ms for plugins to load
    end,
  },
}
