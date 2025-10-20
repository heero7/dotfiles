-- Keymap configuration

local keymap = vim.keymap.set

vim.g.mapleader = " "

-- Makes space do nothing
keymap("n", "<space>", "<Nop>")

keymap("n", "<space><space>x", "<cmd>source %<CR>")
keymap("i", "jk", "<ESC>")

-- Run lua immediately! Good to test things out!
keymap("n", "<Leader>x", ":.lua<CR>")
keymap("v", "<Leader>x", ":lua<CR>")
keymap("n", "<Leader>sv", "<cmd>vsplit<CR>") -- Split the window vertically
keymap("n", "<Leader>sh", "<cmd>split<xR>")  -- Split the window horizontally
keymap("n", "<Leader>nh", "<cmd>nohl<CR>")
keymap("n", "gd", vim.lsp.buf.definition)

-- Show all mapped keys
keymap("n", "<Leader>sc", ":map | grep <Leader><CR>")
