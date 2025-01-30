require("catppuccin").setup({
	flavour = "mocha",
	transparent_background = true,
	styles = {
		comments = "italic",
	},
})

vim.o.termgui_colors = true
vim.o.background = "dark"
vim.cmd[[colorscheme catppuccino]]
