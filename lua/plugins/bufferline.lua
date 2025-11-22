return {
	{
		'akinsho/bufferline.nvim',
		-- Bufferline requires nvim-web-devicons for file icons
		dependencies = { 'nvim-tree/nvim-web-devicons' },

		-- Load the plugin when Neovim starts (optional, but common for UI plugins)
		event = 'VeryLazy',

		-- This 'config' function runs after the plugin is successfully loaded
		config = function()
			require('bufferline').setup {
				options = {
					-- Customize bufferline options here
					mode = "buffers", -- or "tabs"
					separator_style = "slant", -- or "thin", "padded_slant", etc.
					always_show_bufferline = true,
					show_buffer_close_icons = true,
					-- Display LSP diagnostics on the buffer
					diagnostics = "nvim_lsp",

					-- Customize the indicator (e.g., show an underline)
					indicator = {
						style = 'icon', -- 'icon', 'underline' or 'none'
						icon = '▎',
					},

					-- Exclude certain buffer types from the bufferline
					-- excluded_filetypes = { "NvimTree", "lazy" },
				}
			}
		end,
	},
}
