-- force syntax
vim.cmd("syntax enable")

-- Ensure .bean uses 'beancount' filetype
vim.filetype.add({
	extension = {
		bean = "beancount",
	},
})

-- Custom highlighting for .bean files
vim.api.nvim_create_autocmd("FileType", {
	pattern = "beancount",
	callback = function()
		vim.treesitter.stop() -- disables Treesitter for beancount buffers

		-- Custom highlight groups
		vim.api.nvim_set_hl(0, "BeanDate", { fg = "#FFA500", bold = true })
		vim.api.nvim_set_hl(0, "BeanAccount", { fg = "#5FAFFF", bold = true})
		vim.api.nvim_set_hl(0, "BeanHeader", { fg = "#D75F5F", bold = true})
		vim.api.nvim_set_hl(0, "BeanComment", { fg = "#888888", italic = true})
		-- vim.api.nvim_set_hl(0, "BeanKeyword", { fg = "#AF5FFF", bold = true})

		-- Match dates
		vim.cmd([[syntax match BeanDate /\<\d\{4}\/\d\{1,2}\/\d\{1,2}\>/]])

		-- Match account names
		vim.cmd([[syntax match BeanAccount /\<\(Assets\|Liabilities\|Expenses\|Income\|Equity\):[A-Za-z0-9:_-]*/]])

		-- Match "option" keywords
		vim.cmd([[syntax match BeanHeader /^option\s\+\S\+/]])

		-- Comment highlights
		vim.cmd([[syntax match BeanComment /^;.*/]])

		-- Keyword highlighting
		-- vim.cmd([[syntax keyword BeanKeyword open close * txn pad balance]])
	end,
})
