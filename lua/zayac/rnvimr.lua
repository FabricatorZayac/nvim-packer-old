vim.g.rnvimr_enable_ex = 1
vim.g.rnvimr_enable_picker = 1
vim.g.rnvimr_ranger_cmd = { 'ranger --cmd=set draw_borders both' }

vim.keymap.set("n", "<leader>ff", vim.cmd.RnvimrToggle)

