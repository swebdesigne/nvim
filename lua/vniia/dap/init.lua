local dap = require("dap")
local dapui = require("dapui")

-- Setup DAP UI
dapui.setup({
	icons = { expanded = "▼", collapsed = "▶", current_frame = "*" },
	layout = {
		positions = {
			{ pane = "bottom", size = 10 },
		},
		expanded = true,
	},
})

-- Create user command for DAP UI
vim.api.nvim_create_user_command("DapUI", function()
	dapui.toggle()
end, {})

-- Load VSCode launch configurations (for java-dap compatibility)
-- require('dap.ext.vscode').load_launchjs()

-- DAP keymaps
local keymap = vim.keymap
keymap.set("n", "<F5>", dap.continue, { desc = "Continue debug" })
keymap.set("n", "<F6>", dap.step_over, { desc = "Step over" })
keymap.set("n", "<F7>", dap.step_into, { desc = "Step into" })
keymap.set("n", "<F8>", dap.step_out, { desc = "Step out" })
keymap.set("n", "<F9>", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
keymap.set("n", "<F10>", function()
	dapui.eval()
end, { desc = "View variables" })
keymap.set("n", "<F11>", function()
	dapui.refresh()
end, { desc = "Refresh DAP UI" })
keymap.set("n", "<Leader>du", function()
	dapui.toggle()
end, { desc = "Toggle DAP UI" })

-- Auto open DAP UI on session start
dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end

-- Auto close DAP UI on session end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end
