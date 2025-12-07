return {
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup({
      -- auto_restore_enabled = false,
      -- auto_session_suppress_dirs = { 
      --   "~/", 
      --   "~/Dev/", 
      --   "~/Downloads", 
      --   "~/Документы/Projects", 
      --   "~/Desktop/",
      -- },
      -- -- Дополнительные рекомендуемые опции
      -- auto_session_enable_last_session = true,
      -- auto_session_root_dir = vim.fn.stdpath("data") .. "/sessions/",
      -- auto_session_enabled = true,
      -- auto_save_enabled = true,
      -- auto_restore_enabled = false,
    })

    -- Keymaps
    -- local keymap = vim.keymap
    -- keymap.set("n", "<leader>wr", "<cmd>AutoSession restore<CR>", { desc = "Restore session for cwd" })
    -- keymap.set("n", "<leader>ws", "<cmd>AutoSession save<CR>", { desc = "Save session for auto session root dir" })
    -- keymap.set("n", "<leader>wd", "<cmd><AutoSession delete<CR>", { desc = "Delete session" })
  end,
}
