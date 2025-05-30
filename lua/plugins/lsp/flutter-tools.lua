return{
    'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = true,

    config = function()
    require('flutter-tools').setup({
  decorations = {
    statusline = {
      app_version = true,
      device = true,
    },
  },
  widget_guides = {
    enabled = true,
  },
  closing_tags = {
    highlight = 'Comment',
    prefix = '//',
    enabled = true,
  },
  lsp = {
    color = {
      enabled = true,
      background = true,
      foreground = false,
      virtual_text = true,
      virtual_text_str = "■",
    },
    settings = {
      showTodos = true,
      completeFunctionCalls = true,
      enableSnippets = true,
    },
    debugger = {
    enabled = true,
    run_via_dap = true,
    exception_breakpoints = {},
    register_configurations = function(_)
      require('dap').configurations.dart = {}
      require("dap.ext.vscode").load_launchjs()
    end,
  },
  },
})
end
}
