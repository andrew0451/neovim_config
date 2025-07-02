return {
	-- colorscheme
	{
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		-- This command sets the colorscheme when the plugin loads
		vim.cmd("colorscheme rose-pine")
		vim.opt.number = true
		vim.opt.relativenumber = true
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

	-- oil file explorer
	{
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
},

}
