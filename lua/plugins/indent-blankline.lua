return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",

    opts = {
        scope = {
            enabled = true,
            show_start = true,
            show_end = true,
            highlight = {
                "RainbowRed",
                "RainbowYellow",
                "RainbowBlue",
                "RainbowOrange",
                "RainbowGreen",
                "RainbowViolet",
                "RainbowCyan", },
            priority = 500,
        },
        indent = {
            char = "¦", -- or "¦", "·", ".", etc.
        },
    },

    config = function(_, opts)
        local highlight = {
            "RainbowRed",
            "RainbowYellow",
            "RainbowBlue",
            "RainbowOrange",
            "RainbowGreen",
            "RainbowViolet",
            "RainbowCyan",
        }

        -- Ensure rainbow-delimiters uses the same highlight groups
        vim.g.rainbow_delimiters = { highlight = highlight }

        -- Setup highlight groups so they are re-applied on colorscheme changes
        local hooks = require("ibl.hooks")
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
            vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
            vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
            vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
            vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
            vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
            vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
        end)

        -- Use extmarks for consistent scope highlighting
        hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)

        -- Final setup for ibl using opts from above
        require("ibl").setup(opts)
    end,
}
