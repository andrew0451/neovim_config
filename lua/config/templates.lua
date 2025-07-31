local M = {}

M.insert_producer_template = function()
   local template = [[
# Producer Name

## Information
### Address:
### Phone:
### Email:

## Joint Venture Information

## Farm Info
- Acres:
- Cotton Type:
- Modules Expected:

# Notes

# Action Items

# Communication Log

# Bid Center
   ]]

   vim.api.nvim_put(vim.split(template, "\n"), "l", true, true)
end

return M
