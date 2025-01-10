return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		"<leader>cf",
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
		},
	},
}
