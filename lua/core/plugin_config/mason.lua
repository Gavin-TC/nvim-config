require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = { "pyright", "clangd" },
})

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.pyright.setup {
	capabilities = capabilities,
}
