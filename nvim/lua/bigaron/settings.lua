local g = vim.g
local o = vim.opt
local map = vim.keymap.set
local fn = vim.fn

vim.cmd.colorscheme("everforest")

-- line numbers
o.number = true --linenumbers
o.relativenumber = true

-- commands to turn on/off relative numbers depening on the state
vim.api.nvim_create_autocmd("BufReadPre", { command = [[set number]] })
vim.api.nvim_create_autocmd("InsertEnter", { command = [[set norelativenumber]] })
vim.api.nvim_create_autocmd("InsertLeave", { command = [[set relativenumber]] })

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.smartindent = true
o.wrap = false
o.incsearch = true
o.termguicolors = true
o.scrolloff = 10
o.cursorline = true
o.hlsearch = false
vim.api.nvim_set_hl(0, "CursorLine", { underline = true })

-- lsp symbols for buffer gutter
vim.diagnostic.config({
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "✘",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.INFO] = "",
			[vim.diagnostic.severity.HINT] = "",
		},
	},
})

-- keymaps --
-- general
map("n", "<leader>qq", function()
	if fn.expand("%") == "" and (fn.len(fn.filter(fn.range(1, fn.bufnr("$")), "buflisted(v:val)")) == 1) then
		vim.cmd("q")
	else
		vim.cmd("bd")
	end
end, { silent = true })
map("n", "<leader>x", ":bd<CR>", { silent = true })
-- for netrw
map("n", "<leader>ef", ":Ex<CR>", { silent = true })
-- for bufferline
map("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true })
map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true })
map("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", { silent = true })
map("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", { silent = true })
map("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", { silent = true })
map("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", { silent = true })
map("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", { silent = true })
map("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", { silent = true })
map("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", { silent = true })
map("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", { silent = true })
map("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", { silent = true })
map("n", "<leader>$", ":BufferLineGoToBuffer 1<CR>", { silent = true })
