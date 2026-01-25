vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- an example of what to do
-- in insert mode (hitting i) you can type jk to exit insertmode
-- keymap.set("i", "jk", "<ESC>", {desc = "Exit insert mode with jk"})

keymap.set("n", "<leader>nh", ":nohl<CR>", {desc = "clear out the highlights from doing a search"})

-- Use blackhole register for delete so it doesn't copy
keymap.set({"n", "v"}, "d", '"_d', { noremap = true, silent = true} )
keymap.set("n", "dd", '"_dd', { noremap = true, silent = true} )
keymap.set({"n", "v"}, "x", '"_x', { noremap = true, silent = true} )
keymap.set({"n", "v"}, "X", '"_X', { noremap = true, silent = true} )

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", {desc = "splitting windows vertically"})
keymap.set("n", "<leader>sh", "<C-w>s", {desc = "splitting windows horizontally"})
keymap.set("n", "<leader>se", "<C-w>=", {desc = "splitting windows are now equal size"})
keymap.set("n", "<leader>sx", "<cmd>close<CR>", {desc = "exiting a splitted window"})


