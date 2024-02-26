return {

	"williamboman/mason.nvim",

	opts = {
		ensure_installed = {
			"stylua",
			"shfmt",
			"flake8",
			"python-lsp-server",
			"black",
		},
	},
}
