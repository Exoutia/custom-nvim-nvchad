local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    htmldjango = {"djlint"},
    javascript = {"prettier"},
    python = { "isort", "black" },
    go = {"gofumpt", "goimports_reviser", "golines"},
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
