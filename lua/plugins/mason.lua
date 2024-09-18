return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "lua-language-server",
      "stylua",

      -- web dev stuff
      "css-lsp",
      "html-lsp",
      "typescript-language-server",
      "prettier",
      "tailwindcss-language-server",
      "emmet-ls",
      "eslint-lsp",
      "deno",
      "eslint_d",

      -- c/cpp stuff
      "clangd",
      "clang-format",

      -- markdown stuff
      "marksman",
      "ltex-ls",

      -- python stuff
      "pyright",
      "black",
      "ruff-lsp",
      "isort",
      "debugpy",

      -- "mypy",

      -- rust stuff
      "rust-analyzer",

      -- java stuff
      -- "jdtls",
    },
  },
}
