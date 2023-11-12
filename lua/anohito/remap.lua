vim.g.mapleader = " "
vim.keymap.set("n", "<leader>a", vim.cmd.Ex)
vim.keymap.set("n", "<leader>s", ":w<Enter>")

--prime bindings
vim.keymap.set("v", "N", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "E", ":m '<-2<cr>gv=gv")

vim.keymap.set("n", "N", "mzJ`z")
vim.keymap.set("n", "<C-n>", "<C-d>zz")
vim.keymap.set("n", "<C-e>", "<C-u>zz")
vim.keymap.set("n", "<C-h>", "<C-w>hzz")
vim.keymap.set("n", "<C-i>", "<C-w>lzz")
vim.keymap.set("n", "<leader>w", "<C-w>v")
vim.keymap.set("n", "<leader>q", ":q")
vim.keymap.set("n", "j",  "nzzzv")
vim.keymap.set("n", "J", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("n", "<leader>p", [[viw"_dP]])
vim.keymap.set("n", "<leader><leader>p", [["+p]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set("v", "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>y", "viwy")
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("v", "<leader>d", [["_d]])
vim.keymap.set("n", "<leader>d", [[viw"_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader><leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--colemak bindin
vim.keymap.set("n", "n", "j")
vim.keymap.set("n", "e", "k")
vim.keymap.set("n", "i", "l")
vim.keymap.set("n", "l", "i")
vim.keymap.set("n", "k", "e")

vim.keymap.set("v", "n", "j")
vim.keymap.set("v", "e", "k")
vim.keymap.set("v", "i", "l")
vim.keymap.set("v", "l", "i")
vim.keymap.set("v", "j", "n")
vim.keymap.set("v", "k", "e")

vim.keymap.set("o", "n", "j")
vim.keymap.set("o", "e", "k")
vim.keymap.set("o", "i", "l")
vim.keymap.set("o", "l", "i")
vim.keymap.set("o", "j", "n")
vim.keymap.set("o", "k", "e")
