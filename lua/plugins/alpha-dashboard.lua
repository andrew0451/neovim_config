return {
  'goolord/alpha-nvim',
  config = function ()
    local alpha = require('alpha')
    local dashboard = require('alpha.themes.dashboard')

    dashboard.section.header.val = {
      '█████╗ ██╗      ██████╗ ██╗  ██╗ █████╗ ',
      '██╔══██╗██║     ██╔════╝ ██║  ██║██╔══██╗',
      '███████║██║     ██║  ███╗███████║███████║',
      '██╔══██║██║     ██║   ██║██╔══██║██╔══██║',
      '██║  ██║███████╗╚██████╔╝██║  ██║██║  ██║',
      '╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝',
    }

    dashboard.section.buttons.val = {
      dashboard.button('f', '󰈞  Find file', ':Telescope find_files<CR>'),
      dashboard.button('h', '󰄔  Recently opened files', ':Telescope oldfiles<CR>'),
      dashboard.button('r', ' FRECENCY/MRU', ':Telescope frecency<CR>'),
      dashboard.button('m', '  Jump to bookmarks', ':Telescope lsp_workspace_symbols<CR>'),
      dashboard.button('q', '󰅚  Quit NVIM', ':qa<CR>'),
    }

    alpha.setup(dashboard.opts)
  end
};
