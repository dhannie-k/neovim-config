return{
    {
        "neovim/nvim-lspconfig",
         enabled = true,
         dependencies = { 'saghen/blink.cmp' },

        config = function()
            local capabilities = require('blink.cmp').get_lsp_capabilities()
            local lspconfig = require('lspconfig')
            lspconfig['lua_ls'].setup({ capabilities = capabilities })
            local on_attach = require("plugins.lsp.nvim-lspconfig").on_attach   
            local util = require("lspconfig/util")
            
            require("lspconfig").lua_ls.setup{
                settings = {
                    Lua = {
                        runtime = {
                            -- Tell the language server which version of Lua you're using
                            version = 'LuaJIT',
                            -- Setup your lua path
                            path = {
                                '?.lua',
                                '?/init.lua',
                                vim.fn.expand('~/.luarocks/share/lua/5.1/?/init.lua'),
                                vim.fn.expand('~/.luarocks/share/lua/5.1/?.lua'),
                            }
                        },
                        diagnostics = {
                            -- Get the language server to recognize the `vim` global
                            globals = {'vim'},
                        },
                        workspace = {
                            -- Make the server aware of Neovim runtime files
                            library = {
                                [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                                [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
                            },
                            -- Prevent the server from suggesting to modify your Neovim config
                            checkThirdParty = false,
                        },
                        -- Do not send telemetry data containing a randomized but unique identifier
                        telemetry = {
                            enable = false,
                        },
                    }
                }
            }
    
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
    require("lspconfig")["tinymist"].setup {
    settings = {
        formatterMode = "typstyle",
        exportPdf = "onType",
        semanticTokens = "disable"
    }
}      
end
    }

}
