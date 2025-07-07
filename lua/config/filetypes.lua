-- Options based on filetype
local augroup = vim.api.nvim_create_augroup("filetype_settings", { clear = true })

-- Disable colorcolumn for markdown files
vim.api.nvim_create_autocmd("FileType", {
   pattern = "markdown",
   group = augroup,
   callback = function()
      vim.opt_local.colorcolumn = "0"
   end,
})
