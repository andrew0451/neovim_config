-- ~/.config/nvim/lua/plugins/table_mode.lua
-- Plugin specification for dhruvasagar/vim-table-mode

return {
  'dhruvasagar/vim-table-mode',
  ft = { 'markdown', 'text' }, -- This tells Lazy.nvim to load the plugin only for these filetypes
  -- config = function()
  --   -- You can put any specific setup for vim-table-mode here if needed.
  --   -- For instance, to change the default keymap prefix (from <Leader>tm to <Leader>t):
  --   -- vim.g.table_mode_map_prefix = '<Leader>t'
  -- end,
}
