local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.swapfile = false

opt.wrap = false

opt.cursorline = true

opt.mouse:append('a')

--系统剪贴板
opt.clipboard:append('unnamedplus')

opt.splitright = true
opt.splitbelow = true

opt.ignorecase = true
opt.smartcase = true

--Appearence
opt.termguicolors = true
opt.signcolumn = 'yes'
--vim.cmd[[colorscheme tokyonight]]
--vim.cmd[[colorscheme tokyonight-night]]
--vim.cmd[[colorscheme tokyonight-storm]]
--vim.cmd[[colorscheme tokyonight-moon]]
--vim.cmd[[colorscheme catppuccin-latte]]
vim.cmd[[colorscheme catppuccin-frappe]]
--vim.cmd[[colorscheme catppuccin-macchiato]]
--vim.cmd[[colorscheme catppuccin-mocha]]
