require("core.lazy")
--require("core.lsp")
require("config.options")
require("config.keymaps")

vim.cmd("colorscheme gruvbox")
function Transparent(color)
    color = color or "gruvbox"
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'rust', 'dart', 'javascript', 'lua' },
    callback = function()
        vim.treesitter.start()
    end,
})
--Transparent()
require("notify").setup({
    background_colour = "#000000",
})

vim.lsp.enable({ 'lua_ls', 'rust-analyzer', 'tinymist' })
