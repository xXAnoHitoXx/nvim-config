local telescope = require('telescope')

telescope.setup({
    defaults = {
        file_ignore_patterns = {
            "[.]godot",
            ".*[.]png.*",
            ".*[.]svg.*",
            "addons.*[.]cfg"
        }
    }
})
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
