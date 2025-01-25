require("lazy").setup({
  --{ "ellisonleao/gruvbox.nvim", name = "gruvbox", priority = 1001 },
  --{ "catppuccin/nvim", name = "catppuccin", priority = 1002 },
  "ellisonleao/gruvbox.nvim",
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  "nvim-lualine/lualine.nvim",
  "nvim-treesitter/nvim-treesitter",

  -- completion
  {
	"hrsh7th/nvim-cmp",
	dependencies = {
	  "hrsh7th/cmp-nvim-lsp",
	  "hrsh7th/cmp-buffer",
	  "hrsh7th/cmp-path",
	  "saadparwaiz1/cmp_luasnip",
	  "L3MON4D3/LuaSnip",
	  "rafamadriz/friendly-snippets",
	},
  },
  "github/copilot.vim",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  {
    "vinnymeller/swagger-preview.nvim",
    run = "npm install -g swagger-ui-watcher",
  },
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
  },
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.4",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
})

require("nvim-tree").setup()

