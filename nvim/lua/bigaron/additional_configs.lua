-- The lsps detailed in the ensure_installed table will be installed by mason.nvim

local ensure_installed = {
	"stylua",
	"isort",
	"prettierd",
	"cmake-language-server",
	"cmakelang",
}

local installed_package_names = require("mason-registry").get_installed_package_names()
for _, v in ipairs(ensure_installed) do
	if not vim.tbl_contains(installed_package_names, v) then
		vim.cmd(":MasonInstall " .. v)
	end
end

-- vim.lsp.config() stuff here

local installed_packages = require("mason-registry").get_installed_packages()
local installed_lsp_names = vim.iter(installed_packages):fold({}, function(acc, pack)
	table.insert(acc, pack.spec.neovim and pack.spec.neovim.lspconfig)
	return acc
end)

vim.lsp.enable(installed_lsp_names)

-- We add fzf to telescope
require("telescope").load_extension("fzf")

-- We enable bufferline
require("bufferline").setup({
	options = {
		numbers = "ordinal",
	},
})

require("rainbow-delimiters.setup").setup({})
