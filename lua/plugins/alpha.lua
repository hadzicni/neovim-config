return {
  "goolord/alpha-nvim",

  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "                                    ",
      "  ███╗   ██╗██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "                                    ",
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", ":ene <BAR> startinsert<CR>"),
      dashboard.button("f", "󰈞  Find file"),
      dashboard.button("q", "  Quit", ":qa<CR>"),
    }

    dashboard.section.footer.val = {
      "Configuration by Nikola Hadzic",
    }

    alpha.setup(dashboard.opts)
  end,
}
