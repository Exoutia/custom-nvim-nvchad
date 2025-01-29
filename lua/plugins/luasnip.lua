return {
  "L3MON4D3/LuaSnip",
  lazy = true,
  version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
  -- install jsregexp (optional!).
  build = "make install_jsregexp",
  dependencies = {
    {
      "rafamadriz/friendly-snippets",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
        require("luasnip.loaders.from_vscode").lazy_load { paths = { vim.fn.stdpath "config" .. "/snippets/vscode" } }
      end,
    },
  },
  opts = function(_, opts)
    local ls = require "luasnip"
    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node
    local extras = require "luasnip.extras"
    local rep = extras.rep
    local f = ls.function_node

    -- stylua: ignore start

    -- typescriptreact
    ls.add_snippets("typescriptreact", {
      s("cfed", {
        t("const "), i(1), t(" = () => {"),
        t({"", "\t\treturn ("}),
        t({"", "\t\t\t"}), i(2),
        t({"", "\t\t)"}),
        t({ "", "}"}),
        t({""}),
        t({"", "export default " }), rep(1), t(';')
      }, "this creates a simple export default function")
    })
  end,
}
