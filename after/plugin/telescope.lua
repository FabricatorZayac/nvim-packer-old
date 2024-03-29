local builtin = require('telescope.builtin')

vim.keymap.set("n", "<leader>lg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<leader>bb", builtin.buffers, {})
vim.keymap.set("n", "<M-x>", builtin.command_history, {})

vim.keymap.set("n", "gs", builtin.lsp_document_symbols, {})
vim.keymap.set("n", "gD", builtin.lsp_references, {})

local fb_actions = require("telescope._extensions.file_browser.actions")

require("telescope").setup {
  extensions = {
    file_browser = {
      hijack_netrw = true,
      mappings = {
        i = {
          ["<A-CR>"] = fb_actions.create_from_prompt,
        },
      },
    },
  },
  defaults = require("telescope.themes").get_ivy(),
}

require("telescope").load_extension "file_browser"

vim.keymap.set("n", "<leader>ff", function () vim.cmd("Telescope file_browser") end , {})
vim.keymap.set("n", "<leader>FF", function () vim.cmd("Telescope file_browser hidden=true") end , {})

require'telescope'.load_extension("project")
-- vim.keymap.set("n", "<C-p>", ":lua require'telescope'.extensions.project.project{}<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>pp", function () vim.cmd("Telescope project") end, {})
