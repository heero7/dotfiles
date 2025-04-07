vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- disable other space key stuff
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

local opts = { noremap = true, silent = true }

vim.keymap.set("i", "jk", "<Esc>", opts)
vim.keymap.set("i", "jk", "<Esc>", opts)

-- allows a single character delete not to store in register
vim.keymap.set("n", "x", '"_x', opts)

-- window splits
vim.keymap.set("n", "<leader>sv", "<C-w>v", opts)
vim.keymap.set("n", "<leader>sh", "<C-w>h", opts)
-- how to close split?
--vim.keymap.set("n", "<leader>sx", "<C-w>sx", opts)

-- tabs
vim.keymap.set("n", "<leader>to", ":tabnew<C-R>", opts)
vim.keymap.set("n", "<leader>tx", ":tabclose<C-R>", opts)
vim.keymap.set("n", "<leader>tn", ":tabn<C-R>", opts)
vim.keymap.set("n", "<leader>tp", ":tabp<C-R>", opts)

-- Toggling File Explorer
vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>")
