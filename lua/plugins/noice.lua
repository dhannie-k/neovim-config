return {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
        lsp = {
            override = {
                ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                ["vim.lsp.util.stylize_markdown"] = true,
                ["cmp.entry.get_documentation"] = true,
            },
        },
        presets = {
            bottom_search = true,
            command_palette = false,
            long_message_to_split = true,
            inc_rename = false,
            lsp_doc_border = true, -- enable border for clarity
        },
        views = {
            hover = {
                border = {
                    style = "none",
                },
                position = {
                    row = 2,
                    col = 1,
                },
                anchor = "auto",
                relative = "cursor",
                size = {
                    max_height = 15,
                    max_width = 80,
                },
                win_options = {
                    winblend = 0,
                    wrap = true,
                },
            },
            signature = {
                border = {
                    style = "none",
                },
                position = {
                    row = 2,
                    col = 1,
                },
                anchor = "auto",
                relative = "cursor",
                size = {
                    max_height = 10,
                    max_width = 80,
                },
                win_options = {
                    winblend = 0,
                    wrap = true,
                },
            },
        },
    },

    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
}
