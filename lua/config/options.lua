vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4   -- Number of spaces used for each step of (auto)indent
vim.opt.softtabstop = 4  -- Number of spaces that a <Tab> feels like while editing
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.o.winborder = "rounded"
-- Set PowerShell as the default shell
vim.opt.shell = "powershell.exe"
vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""
