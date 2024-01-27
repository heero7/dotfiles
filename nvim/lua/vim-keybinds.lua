-- Keybinds for VIM (not for plugins!)

vim.g.mapleader = " "                                           -- Leader key = <SPACE>
vim.keymap.set("i", "jk", "<ESC>")                              -- Exit using 'jk' in insert mode
vim.keymap.set("n", "<leader>n", ":nohl<CR>")                   -- Clear highlights from search
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)

--vim.keymap.set("n", "x", '"_x"')                              -- Does not keep single char deletes in registry (slows down rapid tap. Could speed up with timout)

vim.keymap.set("n", "<leader>+", "<C-a>")                       -- Increment number
vim.keymap.set("n", "<leader>-", "<C-x>")                       -- Decrement number


vim.keymap.set("n", "<leader>sv", "<C-w>v")                     -- Split window vertivally
vim.keymap.set("n", "<leader>sh", "<C-w>s")                     -- Split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=")                     -- Make split windows same size 
vim.keymap.set("n", "<leader>sx", ":close<CR>")                 -- Close current split window


vim.keymap.set("n", "<leader>to", ":tabnew<CR>")                -- Open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>")              -- Close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>")                  -- Go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>")                  -- Go to previous tab
