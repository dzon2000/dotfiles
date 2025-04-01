-- Tabs and spaces
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.cmd("set nu")
vim.cmd("set rnu")

require("config.lazy")

-- :hi Normal guibg=NONE ctermbg=NONE

-- Config
vim.opt.swapfile = false
vim.g.backgroud = "light"

-- Neotree
vim.keymap.set("n", "<leader>nt", ":Neotree filesystem reveal left<CR>")
vim.diagnostic.config({ virtual_text = true })
