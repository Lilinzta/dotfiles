return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "bash-language-server",
      "lua-language-server",
      "rust-analyzer",
      "clang-format",
      "eslint-lsp",
      "prettier",
      "clangd",
      "stylua",
      "shfmt",
    },
  },
}
