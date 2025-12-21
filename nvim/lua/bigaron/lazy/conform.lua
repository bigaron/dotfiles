return {
	"stevearc/conform.nvim",
	depencencies = { "mason.nvim" },
	event = { "BufWritePre" }, -- Run before saving
	cmd = { "ConformInfo" }, -- Command to execute
	keys = {
		{
			"<leader>cF",
			function()
				require("conform").format({ async = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
		},
		default_format_opts = {
			lsp_format = "fallback",
		},
		format_on_save = { timeout_ms = 500 },
		formatters = {
			shfmt = {
				append_args = { "-i", "2" },
			},
		},
	},
}
