local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})

local telescope = require("telescope.builtin")

-- Telescope: find notes files
vim.keymap.set("n", "<leader>fn", function()
  telescope.find_files({ cwd = "~/ginhub/notes" })
end, { desc = "Find notes file" })

-- Telescope: live grep in notes
vim.keymap.set("n", "<leader>sn", function()
  telescope.live_grep({ cwd = "~/ginhub/notes" })
end, { desc = "Search notes content" })

-- Toggle markdown checkbox under cursor
vim.keymap.set("n", "<leader>tt", function()
  local line = vim.api.nvim_get_current_line()
  local toggled = line:gsub("%[ %]", "[x]")
  if toggled == line then
    -- No unchecked box found, try unchecking
    toggled = line:gsub("%[x%]", "[ ]")
  end
  vim.api.nvim_set_current_line(toggled)
end, { desc = "Toggle Markdown checkbox" })

-- Inserts current date (YYYY-MM-DD) at cursor, then stays in Normal mode
vim.keymap.set('n', '<leader>d', function()
  vim.api.nvim_put({vim.fn.strftime('%Y-%m-%d')}, 'c', true, true)
end, { silent = true, desc = "Insert YYYY-MM-DD Date (Normal Mode)" })

-- You can also have one for datetime:
vim.keymap.set('n', '<leader>D', function()
  vim.api.nvim_put({vim.fn.strftime('%Y-%m-%d %H:%M:%S')}, 'c', true, true)
end, { silent = true, desc = "Insert YYYY-MM-DD HH:MM:SS Datetime (Normal Mode)" })
