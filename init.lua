
require "options"
require "lazy-nvim"
require "keymaps"
--require("config")
--require("oil").setup()
require('lualine').setup()
--vim.o.termguicolors = true

vim.o.background = "dark"
vim.cmd.colorscheme "gruvbox"
require('notify').setup({
  background_colour = "#000000"
})

function Transparent(color)
  color = color or "gruvbox"
   vim.cmd.colorscheme(color)
   vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
   vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end
  Transparent()

--uncomment this if you need transparent background








