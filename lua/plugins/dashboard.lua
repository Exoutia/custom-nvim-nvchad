
return {
    "glepnir/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup {
        -- stylua: ignore start
        -- config
        config = {
          header = {
            '',
            '    ███████╗██╗  ██╗ ██████╗ ██╗   ██╗████████╗██╗ █████╗ ',
            '    ██╔════╝╚██╗██╔╝██╔═══██╗██║   ██║╚══██╔══╝██║██╔══██╗',
            '    █████╗   ╚███╔╝ ██║   ██║██║   ██║   ██║   ██║███████║',
            '    ██╔══╝   ██╔██╗ ██║   ██║██║   ██║   ██║   ██║██╔══██║',
            '    ███████╗██╔╝ ██╗╚██████╔╝╚██████╔╝   ██║   ██║██║  ██║',
            '    ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝    ╚═╝   ╚═╝╚═╝  ╚═╝',
            ''
          },
          footer = {
            "Work on yourself only.",
          }
        },
        theme = "hyper",
      }
      -- stylua: ignore end
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  }

