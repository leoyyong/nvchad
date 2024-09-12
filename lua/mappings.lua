require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", {
    desc = "CMD enter command mode"
})
map("i", "jk", "<ESC>")

map("n","<leader>dt", "<cmd> DapNew <cr>", {
    desc = "new debug session"
})



map("n", "<leader>dt", "<cmd> lua require'dap'.toggle_breakpoint() <cr>", {
    desc = "toggle breakpoint"
})
map("n", "<leader>dc", "<cmd> lua require'dap'.continue() <cr>", {
    desc = "continue"
})
map("n", "<leader>do", "<cmd> lua require'dap'.step_over() <cr>", {
    desc = "step over"
})
map("n", "<leader>di", "<cmd> lua require'dap'.step_into() <cr>", {
    desc = "step into"
})
map("n", "<leader>du", "<cmd> lua require'dap'.step_out() <cr>", {
    desc = "step out"
})
map("n", "<leader>dr", "<cmd> lua require'dap'.repl.toggle() <cr>", {
    desc = "toggle repl"
})
map("n", "<leader>dl", "<cmd> lua require'dap'.run_last() <cr>", {
    desc = "run last"
})
map("n", "<leader>de", "<cmd> lua require'dapui'.eval() <cr>", {
    desc = "open eval"
})

map('n', '<leader>o', '<cmd>Outline<cr>', {
    desc = "Toggle outline"
})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
