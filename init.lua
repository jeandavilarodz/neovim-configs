-- leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Bootstrap and config lazy.nvim package manager.
require("config.bootstrap")
require("config.lazy")

-- Colorscheme
vim.cmd.colorscheme(require("config.colorscheme").name)
