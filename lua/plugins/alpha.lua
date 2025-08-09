return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- For icons
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- Header
      dashboard.section.header.val = {
	  [[                                                                       ]],
	[[  ██████   █████                   █████   █████  ███                  ]],
	[[ ░░██████ ░░███                   ░░███   ░░███  ░░░                   ]],
	[[  ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████   ]],
	[[  ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███  ]],
	[[  ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███  ]],
	[[  ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███  ]],
	[[  █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████ ]],
	[[ ░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░  ]],
	[[                                                                       ]],
     }

      -- Buttons
      dashboard.section.buttons.val = {
        dashboard.button("f", "📂 Find File", ":Telescope find_files<CR>"),
        dashboard.button("g", "🔍 Live Grep", ":Telescope live_grep<CR>"),
        dashboard.button("gs", " Git Status", ":Git<CR>"),
        dashboard.button("n", "📝 New File", ":ene<CR>"),
        dashboard.button("r", "🕒 Recent Files", ":Telescope oldfiles<CR>"),
        dashboard.button("q", "🚪 Quit", ":qa<CR>"),
      }

      -- Footer
      dashboard.section.footer.val = "Welcome! " .. os.date("%H:%M %d-%m-%Y")

      -- Apply TokyoNight highlights
      dashboard.section.header.opts.hl = "AlphaHeader"
      dashboard.section.buttons.opts.hl = "AlphaButtons"
      dashboard.section.footer.opts.hl = "AlphaFooter"

      -- Setup
      alpha.setup(dashboard.opts)

      -- Disable folding
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "alpha",
        callback = function()
          vim.opt_local.foldenable = false
        end,
      })
    end,
  }
