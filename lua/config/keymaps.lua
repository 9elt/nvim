local map = vim.keymap.set

map("n", "<leader>e", vim.diagnostic.open_float)

local Util = require("lazyvim.util")

local lazyterm = function()
  Util.terminal(nil, { cwd = Util.root() })
end

map("n", "<c-,>", lazyterm, { desc = "Terminal (root dir)" })
map("t", "<C-,/>", "<cmd>close<cr>", { desc = "Hide Terminal" })
