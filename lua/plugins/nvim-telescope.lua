return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',  -- or the latest stable version
  dependencies = {
    'nvim-lua/plenary.nvim', -- Required dependency
    'nvim-telescope/telescope-fzf-native.nvim', -- Optional: faster sorting
    build = 'make',
  },
  config = function()
    require('telescope').setup()
  end,
}
