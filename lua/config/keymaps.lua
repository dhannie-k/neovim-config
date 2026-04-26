vim.g.mapleader = " "
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set("n", '<leader>.', function()
    vim.cmd("vsplit | wincmd l")
    require("oil").open()
end)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>')
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>')
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>')
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic' })
vim.keymap.set('n', '<leader>dn', function()
    vim.diagnostic.jump({ count = 1, float = true })
end, { desc = 'Jump to next diagnostic (float)' })

vim.keymap.set('n', '<leader>dp', function()
    vim.diagnostic.jump({ count = -1, float = true })
end, { desc = 'Jump to previous diagnostic (float)' })
-- Map <C-t> (Ctrl+t) in normal mode to execute the command

vim.keymap.set('n', '<leader>t', function()
    -- Get the directory of the current file
    local dir = vim.fn.expand('%:p:h')

    -- Open new tab, change to that dir, and open terminal
    -- We use 'lcd' so it doesn't change the global working directory
    vim.cmd('tabnew | lcd ' .. dir .. ' | terminal')

    -- Optional: Enter insert mode immediately
    vim.cmd('startinsert')
end, { desc = 'Open Terminal in new tab at file path' })
