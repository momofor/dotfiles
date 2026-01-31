vim.lsp.config("lspconfig", {
	settings = {
		json = {
			schemas = require("schemastore").json.schemas({
				select = {
					"package.json",
					".eslintrc",
					"tsconfig.json",
				},
			}),
		},
	},
})
