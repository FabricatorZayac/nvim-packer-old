local lsp = require('lsp-zero').preset("recommended")

<<<<<<< HEAD
-- lsp.ensure_installed({
--   'lua_ls',
--   'rust_analyzer',
-- })
=======
lsp.ensure_installed({
  'rust_analyzer',
})
>>>>>>> 0fc6435 (added lexima)

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

local cmp = require('cmp')
-- local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ["<C-Space>"] = cmp.mapping.complete(),
  ["<C-Esc>"] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({mapping = cmp_mappings})

lsp.on_attach(function(_, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "gD", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "<leader>cr", function() vim.lsp.buf.rename() end, opts)
end)

lsp.setup()
