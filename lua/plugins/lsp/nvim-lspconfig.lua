return{
"neovim/nvim-lspconfig",

enabled = false,


config = function()

    -- Define the local variables inside the config function
    local on_attach = require("plugins.lsp.nvim-lspconfig").on_attach
    --local capabilities = require("plugins.lsp.nvim-lspconfig").capabilities
    local capabilities = require("plugins.cmp.cmp-nvim-lsp").capabilities
    local lspconfig = require("lspconfig")
    local util = require("lspconfig/util")
    
    require'lspconfig'.rust_analyzer.setup {

        on_attach = on_attach,
        capabilities = capabilities,
        cmd = {"rustup", "run", "stable", "rust-analyzer"},
        filetypes = {"rust"},
        root_dir = util.root_pattern("Cargo.toml"),

        settings = {
            ['rust-analyzer'] = {
                cargo = {
                    allFeatures = true,
                },
                check = {
                    command = "clippy";
                },
                diagnostics = {
                    enable = true;
                }
            }
        }
    }
end
}
