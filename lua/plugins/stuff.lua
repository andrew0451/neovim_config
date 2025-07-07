return {
	-- colorscheme
	{
	"neanias/everforest-nvim",
	name = "everforest",
	config = function()
		-- This command sets the colorscheme when the plugin loads
		vim.cmd("colorscheme everforest")
		vim.opt.number = true
	end,
	},
	-- nvim web icons
	{ "nvim-tree/nvim-web-devicons", opts = {} },

	-- Render Markdown
	{
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
},


}
