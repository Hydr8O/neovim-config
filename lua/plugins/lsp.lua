return {
	"neovim/nvim-lspconfig",
	config = function()
		require("lspconfig").clangd.setup({})
		require("lspconfig").csharp_ls.setup({})
	end,
}
