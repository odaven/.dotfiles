local tsserver_init_options = {
	preferences = {
		importModuleSpecifierPreference = "non-relative",
		includeInlayEnumMemberValueHints = true,
		includeInlayFunctionLikeReturnTypeHints = true,
		includeInlayFunctionParameterTypeHints = true,
		includeInlayParameterNameHints = "all",
		includeInlayPropertyDeclarationTypeHints = true,
		includeInlayVariableTypeHints = true,
		includeInlayVariableTypeHintsWhenTypeMatchesName = true,
	},
}

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"jsonls",
					"lua_ls",
					"tsserver",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		opts = {
			inlay_hints = {
				enabled = true,
			},
		},
		config = function()
			local lspconfig = require("lspconfig")
			local capabilites = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.jsonls.setup({ capabilites = capabilites })
			lspconfig.lua_ls.setup({ capabilites = capabilites })
			lspconfig.tsserver.setup({
				capabilites = capabilites,
				init_options = tsserver_init_options,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			vim.keymap.set({ "n", "v" }, "<space>i", vim.lsp.buf.code_action, {})
		end,
	},
}
