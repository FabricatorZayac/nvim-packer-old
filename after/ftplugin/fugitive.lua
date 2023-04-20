vim.keymap.set("n", "pp", function () vim.cmd("Git push") end, { buffer = 0, noremap = true })
vim.keymap.set("n", "Fp", function () vim.cmd("Git pull") end, { buffer = 0, noremap = true })
