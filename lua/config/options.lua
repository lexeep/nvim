-- Set space as mapleader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Sync clipboard between OS and Nvim
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

vim.o.undofile = true -- Save undo history

-- Basic
vim.o.number = true
vim.o.cursorline = true
vim.o.showmode = false
vim.o.swapfile = false

--vim.o.winborder = "rounded"

vim.o.scrolloff = 10
vim.o.sidescrolloff = 8

-- Misc
vim.o.inccommand = "nosplit"

-- Indentation
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Visual
vim.g.have_nerd_font = true
vim.o.termguicolors = true
vim.o.signcolumn = "yes"
vim.o.breakindent = true

--[[
vim.o.list = true
vim.opt.listchars = {tab = '» ', trail = '·', nbsp = '␣'}
--]]

vim.o.splitright = true
vim.o.splitbelow = true

-- File Handling
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- vim: ts=2 sts=2 sw=2 et
