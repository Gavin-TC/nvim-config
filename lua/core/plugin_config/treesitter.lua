require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "lua", "vim" },

	sync_instasll = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
}
