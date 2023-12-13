vim.g.mapleader = " "
vim.keymap.set("n", "<leader>s", ":w<CR>")

-- git
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>gp", ":G<space>push<CR>")

--prime bindings
vim.keymap.set("v", "N", ":m '>+1<CR>gv")
vim.keymap.set("v", "E", ":m '<-2<CR>gv")

vim.keymap.set("n", "N", "mzJ`z")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-i>", "<C-w>l")
vim.keymap.set("n", "<leader>w", "<C-w>v")
vim.keymap.set("n", "<leader>q", ":q<Enter>")
vim.keymap.set("n", "<leader>Q", ":q!<Enter>")
vim.keymap.set("n", "j",  "nzzzv")
vim.keymap.set("n", "J", "Nzzzv")

-- greatest remap ever
vim.keymap.set("v", "<leader>p", [["_dP]])
vim.keymap.set("n", "<leader>p", [["_diwP]])
vim.keymap.set("n", "<leader><leader>p", [["+p]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"v", "n"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"v", "n"}, "<leader>d", [["_d]])
vim.keymap.set("n", "<leader>D", [["_D]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader><leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

local function scroll_down()
    local countl = vim.v.count1
    vim.cmd("norm! "..countl.."j")
    if(vim.fn.line('$') > vim.api.nvim_win_get_height(0)) then
        local cursor_pos = math.min(vim.fn.line('$'), vim.fn.line('.') + countl)
        local extra_scroll = vim.o.scrolloff - (vim.fn.line('$') - cursor_pos)
        if(extra_scroll > 0) then
            vim.cmd("norm! zb")
            vim.cmd("norm! "..extra_scroll..vim.api.nvim_replace_termcodes("<C-e>", true, false, true))
        end
    end
end

local function scroll_up()
    local countl = vim.v.count1
    vim.cmd("norm! "..countl.."k")
    if(vim.fn.line('$') > vim.api.nvim_win_get_height(0)) then
        local cursor_pos = math.min(vim.fn.line('$'), vim.fn.line('.') + countl)
        local extra_scroll = vim.o.scrolloff - (vim.fn.line('$') - cursor_pos)
        if(extra_scroll > 0) then
            vim.cmd("norm! zb")
            vim.cmd("norm! "..extra_scroll..vim.api.nvim_replace_termcodes("<C-e>", true, false, true))
        end
    end
end

--colemak binding
vim.keymap.set("n", "n", scroll_down)
vim.keymap.set("n", "e", scroll_up)
vim.keymap.set({"v", "o"}, "n", "j")
vim.keymap.set({"v", "o"}, "e", "k")
vim.keymap.set({"n", "v", "o"}, "i", "l")
vim.keymap.set({"n", "v", "o"}, "l", "i")
vim.keymap.set({"n", "v", "o"}, "k", "e")

vim.keymap.set("n", "I", "L")
vim.keymap.set("n", "L", "I")
