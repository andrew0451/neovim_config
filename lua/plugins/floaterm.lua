return {
  "voldikss/vim-floaterm",
  config = function()
    vim.g.floaterm_width = 0.9
    vim.g.floaterm_height = 0.8
    vim.g.floaterm_wintype = "float"
    vim.g.floaterm_position = "center"

    vim.keymap.set('n', '<leader>m', ':FloatermToggle<CR>', { noremap = true, silent = true, desc = "Toggle Floaterm" })
    vim.keymap.set('n', '<leader>ft', ':FloatermNew<CR>', { noremap = true, silent = true, desc = "New Floaterm" })
    vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>:FloatermToggle<CR>]], { noremap = true, silent = true })
  end,
}
