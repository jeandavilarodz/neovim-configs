-- leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Bootstrap and config lazy.nvim package manager.
require("config.bootstrap")
require("config.lazy")

-- Colorscheme
vim.cmd.colorscheme(require("config.colorscheme").name)

-- Set tabs to 4 spaces
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
