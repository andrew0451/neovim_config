return {
	"jamessan/vim-gnupg",

	lazy = false,

	config = function()
		vim.g.GPGPreferSymmetric = 1
		vim.g.GPGUsePipes = 1
	end,
}
