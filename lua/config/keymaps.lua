local map = vim.keymap.set

map("n", "<leader>e", vim.diagnostic.open_float)
map("n", "<leader>E", vim.lsp.buf.hover)
