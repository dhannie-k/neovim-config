return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',       
  config = function()
    require('dashboard').setup {
      -- config
  theme = 'doom',
  config = {
    header = {
    [[                                          ]],  
    [[               ▄▄██████████▄▄             ]],
    [[               ▀▀▀   ██   ▀▀▀             ]],
    [[       ▄██▄   ▄▄████████████▄▄   ▄██▄     ]],
    [[     ▄███▀  ▄████▀▀▀    ▀▀▀████▄  ▀███▄   ]],
    [[    ████▄ ▄███▀              ▀███▄ ▄████  ]],
    [[   ███▀█████▀▄████▄      ▄████▄▀█████▀███ ]],
    [[   ██▀  ███▀ ██████      ██████ ▀███  ▀██ ]],
    [[    ▀  ▄██▀  ▀████▀  ▄▄  ▀████▀  ▀██▄  ▀  ]],
    [[       ███           ▀▀           ███     ]],
    [[       ██████████████████████████████     ]],
    [[   ▄█  ▀██  ███   ██    ██   ███  ██▀  █▄ ]],
    [[   ███  ███ ███   ██    ██   ███▄███  ███ ]],
    [[   ▀██▄████████   ██    ██   ████████▄██▀ ]],
    [[    ▀███▀ ▀████   ██    ██   ████▀ ▀███▀  ]],
    [[     ▀███▄  ▀███████    ███████▀  ▄███▀   ]],
    [[       ▀███    ▀▀██████████▀▀▀   ███▀     ]],
    [[         ▀    ▄▄▄    ██    ▄▄▄    ▀       ]],
    [[               ▀████████████▀             ]],
    [[                                          ]],
    [[                                          ]]                                            
      

    }, --your header
    footer = {
      
    }  --your footer
  }

    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}