require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- map("n", "<leader>lg", function()
--   require("nvchad.term").new { pos = "float", cmd = "lazygit && exit" }
-- end, { desc = "Lazygit" })
--
map("n", "<leader>dc", "<cmd>lua require('dap').continue()<cr>", { desc = "Debug Continue" })
map("n", "<leader>db", "<cmd>lua require('dap').toggle_breakpoint()<cr>", { desc = "Debug Toggle Breakpoint" })
map("n", "<leader>dr", "<cmd>lua require('dap').repl.toggle()<cr>", { desc = "Debug Toggle Repl" })
map("n", "<leader>ds", "<cmd>lua require('dap').stop()<cr>", { desc = "Debug Stop" })
map("n", "<leader>dn", "<cmd>lua require('dap').step_over()<cr>", { desc = "Debug Step Over" })
map("n", "<leader>di", "<cmd>lua require('dap').step_into()<cr>", { desc = "Debug Step Into" })
map("n", "<leader>do", "<cmd>lua require('dap').step_out()<cr>", { desc = "Debug Step Out" })
map("n", "<leader>dl", "<cmd>lua require('dap').run_last()<cr>", { desc = "Debug Run Last" })
map("n", "<leader>dt", "<cmd>lua require('dap-go').debug_test()<cr>", { desc = "Debug Test" })
map("n", "<Leader>b", "<cmd>lua require('dap').toggle_breakpoint()<cr>", { desc = "Toggle Breakpoint" })
map("n", "<Leader>du", "<cmd>lua require('dapui').toggle()<cr>", { desc = "Toggle Debug UI" })
-- copilot
vim.keymap.set("i", "<M-S-Right>", 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true
