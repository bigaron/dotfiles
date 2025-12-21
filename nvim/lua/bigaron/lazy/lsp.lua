return {
	"neovim/nvim-lspconfig",
	dependencies = { "saghen/blink.cmp" },
	config = function()
		local servers = { "lua_ls" }
		for _, server in ipairs(servers) do
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			vim.lsp.config(server, { capabilities = capabilities })
			vim.lsp.enable(server)
		end
	end,
}
