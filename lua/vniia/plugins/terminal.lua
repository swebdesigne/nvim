return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			direction = "float",
			float_opts = {
				border = "curved",
				width = function()
					return math.floor(vim.o.columns * 0.90)
				end,
				height = function()
					return math.floor(vim.o.lines * 0.90)
				end,
			},
			persist_mode = true,
		})

		-- Float терминал (ID 1)
		vim.keymap.set("n", "<leader>tf", function()
			local Terminal = require("toggleterm.terminal").Terminal
			local term = Terminal:new({
				id = 1,
				direction = "float",
			})
			term:toggle()
		end, { desc = "Float terminal" })

		-- Горизонтальный терминал (ID 2)
		vim.keymap.set("n", "<leader>tt", function()
			local Terminal = require("toggleterm.terminal").Terminal
			local term = Terminal:new({
				id = 2,
				direction = "horizontal",
				size = 15,
			})
			term:toggle()
		end, { desc = "Horizontal terminal" })

		-- Закрыть по Esc+Esc (в режиме терминала)
		vim.keymap.set("t", "<Esc><Esc>", "<cmd>ToggleTerm<CR>", { desc = "Close terminal" })
	end,
}
