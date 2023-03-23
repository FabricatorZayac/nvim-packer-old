local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>bb', builtin.buffers, {})
vim.keymap.set('n', '<M-x>', builtin.command_history, {})

vim.keymap.set('n', 'gD', builtin.lsp_references, {})

require("telescope").load_extension "file_browser"

vim.keymap.set('n', '<leader>ff', function () vim.cmd("Telescope file_browser") end , {})
