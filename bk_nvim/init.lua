-- init.lua --
require("config.lazy")

-- base nvim config --
vim.opt.number = true

-- clipboard --
vim.api.nvim_set_option("clipboard", "unnamedplus")

-- disable netrw at the very start of init.lua --
vim.g.load_netrw = 1
vim.g.load_netrwPlugin = 1

-- optionally enable 24-bit color --
vim.opt.termguicolors = true

-- oil --
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- nvim-tree --
vim.keymap.set("n", "+", "<CMD>NvimTreeOpen<CR>", { desc = "Open tree" })

-- telescope file browser --
vim.keymap.set("n", "<leader>fb", "<CMD>Telescope file_browser<CR>", { desc = "Open telescope file browser" })
vim.keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>", { desc = "Open telescope find files" })
