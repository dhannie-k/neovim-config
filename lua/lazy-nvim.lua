-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup({
  {import = "plugins.gruvbox"},
  {import = "plugins.tokyonight"},
  {import = "plugins.catppuccin"},
  {import = "plugins.oil-nvim"},
  {import = "plugins.lsp.mason"},
  {import = "plugins.lsp.mason-lspconfig"},
  {import = "plugins.lsp.nvim-lspconfig"},
  {import = "plugins.lsp.rustaceanvim"},
  {import = "plugins.cmp.cmp-vsnip"},
  {import = "plugins.cmp.cmp-nvim-lsp"},
  {import = "plugins.cmp.cmp-buffer"},
  {import = "plugins.cmp.cmp-path"},
  {import = "plugins.cmp.cmp-cmdline"},
  {import = "plugins.cmp.nvim-cmp"},
  {import = "plugins.cmp.blink"},
  {import = "plugins.nvim-treesitter"},
  {import = "plugins.nvim-dap"},
  {import = "plugins.lualine"},
  {import = "plugins.noice"},
  {import = "plugins.dashboard"},
  {import = "plugins.which-key"},
  {import = "plugins.telescope.telescope"},
  {import = "plugins.telescope.telescope-fzf-native"},

})

