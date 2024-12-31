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
    local f = ls.function_node

    local myFunc = function()
      return "HELLO"
    end

    ls.add_snippets("lua", {
      s("example", {
        f(myFunc),
      }),
    })
  end,
}
