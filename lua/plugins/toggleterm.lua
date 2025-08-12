return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup {
      size = 15,
      open_mapping = [[<leader>t]],
      hide_numbers = true,
      shade_terminals = true,
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      direction = "horizontal", -- can be 'vertical', 'float', or 'tab'
      close_on_exit = true,
      shell = vim.o.shell,
    }
  end,
}
