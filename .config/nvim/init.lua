-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- for neovide
if vim.g.neovide then
  vim.o.guifont = "Hack Nerd Font:h16:b"
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_cursor_animate_in_insert_mode = true
  vim.g.neovide_cursor_vfx_mode = "railgun"
end
