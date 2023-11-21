-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local api = require('nvim-tree.api')

require("nvim-tree").setup({
    on_attach = function ()
        vim.keymap.set("n", "<leader>a", function ()
            api.tree.toggle({find_file = true})
        end)
        vim.keymap.set("n", "<CR>", api.node.open.edit)
        vim.keymap.set("n", "<leader>c", api.tree.collapse_all)
        vim.keymap.set("n", "%", api.fs.create)
    end,

    sort = {
        sorter = "case_sensitive",
    },

    view = {
        width = 30,
    },

    renderer = {
        group_empty = true,
    },

    diagnostics = {
        enable = true,
        show_on_dirs = true,
    },
})
require("anohito")
print("Ocha no junbi ga dekimashita.")
