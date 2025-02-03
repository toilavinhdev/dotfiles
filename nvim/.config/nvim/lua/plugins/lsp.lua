return {
	-- LSP Manager
	{
    "williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
        	icons = {
          	package_installed = '✓',
          	package_pending = '➜',
          	package_uninstalled = '✗',
        	},
      	}
			})
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls"
				}
			})
		end
	},

	-- LSP integrated Neovim
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			end
	}
}
