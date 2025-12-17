local g = vim.g
local o = vim.opt

vim.cmd.colorscheme("everforest")

-- line numbers
o.relativenumber = true 
o.number = true --linenumbers

-- commands to turn on/off relative numbers depening on the state
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
vim.api.nvim_set_hl(0, 'CursorLine', {underline = true})
