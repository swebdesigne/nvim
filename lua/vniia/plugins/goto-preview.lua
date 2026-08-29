return {
	"rmagatti/goto-preview",
	dependencies = {
		"rmagatti/logger.nvim", -- зависимость для goto-preview
	},
	event = "BufEnter", -- загружается при входе в буфер
	config = function()
		-- Настройка goto-preview
		require("goto-preview").setup({
			width = 120, -- Ширина плавающего окна
			height = 15, -- Высота плавающего окна
			border = { "↖", "─", "┐", "│", "┘", "─", "└", "│" }, -- Стиль рамки
			default_mappings = false, -- Отключаем стандартные маппинги (настроим сами)
			debug = false,
			opacity = nil, -- Прозрачность (nil = без прозрачности)
			resizing_mappings = false,
			post_open_hook = nil,
			post_close_hook = nil,
			references = {
				provider = "telescope", -- Используем telescope для просмотра ссылок
				telescope = require("telescope.themes").get_dropdown({ hide_preview = false }),
			},
			focus_on_open = true, -- Фокусироваться на плавающем окне
			dismiss_on_move = false, -- Не закрывать при движении курсора
			force_close = true,
			bufhidden = "wipe",
			stack_floating_preview_windows = true,
			same_file_float_preview = true,
			preview_window_title = { enable = true, position = "left" },
			zindex = 1,
			vim_ui_input = true,
		})

		-- 🔥 Маппинги клавиш (в стиле Harpoon)

		-- Просмотр определения (Definition)
		vim.keymap.set("n", "gpd", function()
			require("goto-preview").goto_preview_definition()
		end, { desc = "Goto Preview Definition" })

		-- Просмотр реализации (Implementation) - ОЧЕНЬ ПОЛЕЗНО для Java/C++
		vim.keymap.set("n", "gpi", function()
			require("goto-preview").goto_preview_implementation()
		end, { desc = "Goto Preview Implementation" })

		-- Просмотр объявления (Declaration)
		vim.keymap.set("n", "gpD", function()
			require("goto-preview").goto_preview_declaration()
		end, { desc = "Goto Preview Declaration" })

		-- Просмотр определения типа (Type Definition)
		vim.keymap.set("n", "gpt", function()
			require("goto-preview").goto_preview_type_definition()
		end, { desc = "Goto Preview Type Definition" })

		-- Просмотр ссылок (References) - открывает telescope
		vim.keymap.set("n", "gpr", function()
			require("goto-preview").goto_preview_references()
		end, { desc = "Goto Preview References" })

		-- Закрыть все плавающие окна goto-preview
		vim.keymap.set("n", "gpc", function()
			require("goto-preview").close_all_win()
		end, { desc = "Close all Goto Preview windows" })

		-- 🔄 Дополнительные удобные маппинги (как у Harpoon)

		-- Навигация по плавающему окну (если оно открыто)
		vim.keymap.set("n", "<C-w><C-h>", function()
			require("goto-preview").goto_preview_definition()
		end, { desc = "Preview definition in split" })

		-- Просмотр в вертикальном сплите (альтернатива плавающему окну)
		vim.keymap.set("n", "gps", function()
			vim.cmd("vsplit")
			require("goto-preview").goto_preview_definition()
		end, { desc = "Preview definition in vertical split" })
	end,
}
