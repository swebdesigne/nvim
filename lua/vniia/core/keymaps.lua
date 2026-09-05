local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move down in buffer with cursor centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "move up in buffer with cursor centered" })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste over selection without loosing yanked
vim.keymap.set("x", "p", [["_dP]])

-- leader d delete wont remember as yanked/clipboard when delete pasting
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear search hl", silent = true })

-- format built in
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- prevent x delete from registering when next paste
vim.keymap.set("n", "x", '"_x', opts)

-- Replace the word cursor is on globally
vim.keymap.set(
	"n",
	"<leader>s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Replace word cursor is on globally" }
)
-- Executes shell command from in here making file executable
vim.keymap.set("n", "<leader>X", "<cmd>!chmod +x %<CR>", { silent = true, desc = "makes file executable" })

-- tab stuff
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>") --open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>") --close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>") --go to next
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>") --go to pre
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>") --open current tab in new tab

--split management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
-- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
-- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
-- close current split window
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Copy filepath to the clipboard
vim.keymap.set("n", "<leader>fp", function()
	local filePath = vim.fn.expand("%:~")
	vim.fn.setreg("+", filePath)
	print("File path copied to clipboard: " .. filePath)
end, { desc = "Copy file path to clipboard" })

-- restart
vim.keymap.set("n", "<leader>re", "<cmd>restart<cr>", {
	desc = "Restart Neovim (:restart)",
})

vim.keymap.set("n", "<leader>lr", function()
	vim.cmd("lsp restart")
	vim.notify("LSP restarted", vim.log.levels.INFO)
end, { desc = "Restart LSP" })

-- Java specific keymaps
vim.keymap.set("n", "<leader>jm", ":JavaRunnerRunMain<CR>", { desc = "Run Java main method" })
vim.keymap.set("n", "<leader>jM", ":JavaRunnerStopMain<CR>", { desc = "Stop Java application" })
vim.keymap.set("n", "<leader>jf", ":JavaRunnerToggleLogs<CR>", { desc = "Toggle Java logs" })

vim.keymap.set("n", "<leader>jt", function()
	vim.cmd("JavaTestRunCurrentClass")

	-- vim.keymap.set("n", "<leader>jt", ":JavaTestRunCurrentClass<CR>", { desc = "Run tests in current class" })
	local function try_show_report()
		local ok, err = pcall(vim.cmd, "JavaTestViewLastReport")
		if not ok then
			vim.defer_fn(try_show_report, 500) -- Пробуем снова через 200ms
		end
	end

	vim.defer_fn(try_show_report, 5000) -- Первая попытка через 500ms
end, { desc = "Run tests and show report" })

vim.keymap.set("n", "<leader>jT", ":JavaTestDebugCurrentClass<CR>", { desc = "Debug tests in current class" })
vim.keymap.set("n", "<leader>jd", ":JavaDapConfig<CR>", { desc = "Configure Java DAP" })
vim.keymap.set("n", "<leader>jtr", ":JavaTestViewLastReport<CR>", { desc = "View last report of test" })

vim.keymap.set("n", "<leader>jtm", function()
	vim.cmd("JavaTestRunCurrentMethod")

	-- vim.keymap.set("n", "<leader>jtm", ":JavaTestRunCurrentMethod<CR>", { desc = "Run test in current method" })
	local function try_show_report()
		local ok, err = pcall(vim.cmd, "JavaTestViewLastReport")
		if not ok then
			vim.defer_fn(try_show_report, 500) -- Пробуем снова через 200ms
		end
	end

	vim.defer_fn(try_show_report, 5000) -- Первая попытка через 500ms
end, { desc = "Run test in current method" })

vim.keymap.set("n", "<leader>jp", ":JavaProfile<CR>", { desc = "Change Java runtime" })

-- Debug commands
vim.keymap.set("n", "<leader>dd", function()
    require('java-dap.debug-config').start_debug()
end, { desc = "Debug Java application" })
vim.keymap.set("n", "<leader>da", function()
    require('java-dap.debug-config').attach_debug()
end, { desc = "Attach to debug session" })

vim.keymap.set("n", "<F5>", function()
	require("dap").continue()
end)
vim.keymap.set("n", "<F10>", function()
	require("dap").step_over()
end)
vim.keymap.set("n", "<F11>", function()
	require("dap").step_into()
end)
vim.keymap.set("n", "<F12>", function()
	require("dap").step_out()
end)
vim.keymap.set("n", "<Leader>b", function()
	require("dap").toggle_breakpoint()
end)
vim.keymap.set("n", "<Leader>B", function()
	require("dap").set_breakpoint()
end)
vim.keymap.set("n", "<Leader>lp", function()
	require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
end)
vim.keymap.set("n", "<Leader>dr", function()
	require("dap").repl.open()
end)
vim.keymap.set("n", "<Leader>dl", function()
	require("dap").run_last()
end)
vim.keymap.set("n", "<Leader>dt", function()
	require("dapui").toggle()
end, { desc = "Toggle DAP UI" })
vim.keymap.set({ "n", "v" }, "<Leader>dh", function()
	require("dap.ui.widgets").hover()
end)
vim.keymap.set({ "n", "v" }, "<Leader>dp", function()
	require("dap.ui.widgets").preview()
end)
vim.keymap.set("n", "<Leader>df", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.frames)
end)
vim.keymap.set("n", "<Leader>ds", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.scopes)
end)
