-- Basic settings
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.wrap = false

vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.incsearch = true
vim.opt.hlsearch = true

vim.opt.termguicolors = true

vim.opt.clipboard = "unnamedplus"
vim.opt.syntax = "on"

-- Pmenu colors
vim.cmd [[ hi Pmenu guibg=#191e29 ]]
vim.cmd [[ hi PmenuSel guibg=#2f394f ]]

-- General colorscheme
vim.cmd [[ colorscheme slate ]]

-- Setup stuff
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("core.plugins")
require("core.plugin_config")

