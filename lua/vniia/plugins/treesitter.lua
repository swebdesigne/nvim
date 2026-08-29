return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		config = function()
			-- import nvim-treesitter plugin
			require("nvim-treesitter").setup({ -- enable syntax highlighting
				highlight = {
					enable = true,
				},
				-- enable indentation
				indent = { enable = true },

				-- ensure these languages parsers are installed
				ensure_installed = {
					"json",
					"javascript",
					"typescript",
					"tsx",
					"go",
					"yaml",
					"html",
					"css",
					"python",
					"http",
					"prisma",
					"markdown",
					"markdown_inline",
					"svelte",
					"graphql",
					"bash",
					"lua",
					"vim",
					"dockerfile",
					"gitignore",
					"query",
					"vimdoc",
					"c",
					"cpp",
					"java",
					"rust",
					"ron",
					"asm",
					"toml",
				},
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<C-space>",
						node_incremental = "<C-space>",
						scope_incremental = false,
					},
				},
				additional_vim_regex_highlighting = false,
				textobjects = {
					select = {
						enable = true,
						lookahead = true,
						keymaps = {
							["aA"] = { query = "@assignment.left", desc = "Select left side of assignment" },
							["dA"] = { query = "@assignment.right", desc = "Select right side of assignment" },
							["af"] = { query = "@function", desc = "Select function" },
							["ic"] = { query = "@conditional", desc = "Select conditional" },
							["il"] = { query = "@loop", desc = "Select loop" },
							["al"] = { query = "@parameter", desc = "Select parameter" },
						},
					},
					move = {
						enable = true,
						set_jumps = true,
						goto_next_start = {
							["]f"] = { query = "@function.outer" },
							["]c"] = { query = "@class.outer" },
							["]a"] = { query = "@parameter.inner" },
							["]i"] = { query = "@conditional.outer" },
							["]l"] = { query = "@loop.outer" },
						},
						goto_next_end = {
							["]F"] = { query = "@function.outer" },
							["]C"] = { query = "@class.outer" },
							["]A"] = { query = "@parameter.outer" },
							["]I"] = { query = "@conditional.outer" },
							["]L"] = { query = "@loop.outer" },
						},
						goto_previous_start = {
							["[f"] = { query = "@function.outer" },
							["[c"] = { query = "@class.outer" },
							["[a"] = { query = "@parameter.inner" },
							["[i"] = { query = "@conditional.outer" },
							["[l"] = { query = "@loop.outer" },
						},
						goto_previous_end = {
							["[F"] = { query = "@function.outer" },
							["[C"] = { query = "@class.outer" },
							["[A"] = { query = "@parameter.outer" },
							["[I"] = { query = "@conditional.outer" },
							["[L"] = { query = "@loop.outer" },
						},
					},
				},
			})
		end,
	},
	-- NOTE: js,ts,jsx,tsx Auto Close Tags
	{
		"windwp/nvim-ts-autotag",
		enabled = true,
		ft = {
			"html",
			"xml",
			"javascript",
			"typescript",
			"javascriptreact",
			"typescriptreact",
			"typescriptangular",
			"svelte",
		},
		config = function()
			-- Independent nvim-ts-autotag setup
			require("nvim-ts-autotag").setup({
				opts = {
					enable_close = true, -- Auto-close tags
					enable_rename = true, -- Auto-rename pairs
					enable_close_on_slash = false, -- Disable auto-close on trailing `</`
				},
				per_filetype = {
					["html"] = {
						enable_close = true, -- Disable auto-closing for HTML
					},
					["typescriptreact"] = {
						enable_close = false, -- Explicitly enable auto-closing (optional, defaults to `true`)
					},
					["typescriptangular"] = {
						enable_close = true, -- Explicitly enable auto-closing (optional, defaults to `true`)
					},
				},
			})
		end,
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
	},
}
