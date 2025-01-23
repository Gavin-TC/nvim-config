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
vim.opt.syntax = "on"      -- Syntax highlighting

-- Pmenu colors
vim.cmd [[ hi Pmenu guibg=#191e29 ]]
vim.cmd [[ hi PmenuSel guibg=#2f394f ]]

-- General colorscheme
vim.cmd [[ colorscheme slate ]]

-- Plugin manager setup (Lazy.nvim recommended)
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

require("lazy").setup({
  -- LSP and tools
  { "williamboman/mason.nvim", config = true },
  { "williamboman/mason-lspconfig.nvim", config = true },
  { "neovim/nvim-lspconfig" },

  -- Syntax highlighting with Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "python", "javascript", "html", "css" }, -- Add langs you use
        highlight = { enable = true },
      })
    end,
  },

  -- Auto closing braces
  {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config = true,
	opts = {},
  },
})

-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "pyright", "ts_ls", "clangd" }, -- Replace with LSPs you need
})

-- LSP Config
local lspconfig = require("lspconfig")
lspconfig.jdtls.setup({})
lspconfig.pyright.setup({})
