return {
	"rachartier/tiny-cmdline.nvim",
	init = function()
		vim.o.cmdheight = 0
		-- ВКЛЮЧАЕМ UI2 (обязательно для Neovim 0.12+)
		pcall(require("vim._core.ui2").enable, {})
	end,
	config = function()
		require("tiny-cmdline").setup({
			position = {
				x = "50%",
				y = "50%",
			},
			width = {
				value = "60%",
			},
			border = "rounded",
		})
	end,
}
