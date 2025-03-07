local options = {
  formatters_by_ft = {
    css = { "prettier" },
    html = { "prettier" },
    lua = { "stylua" },
    python = { "pyink" },
    rust = { "rustfmt" },
    sh = { "shfmt" },
    zsh = { "shfmt" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
