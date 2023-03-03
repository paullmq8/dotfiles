vim.g.mapleader = ' '

local keymap = vim.keymap

--keymap.set('i', 'jk', '<ESC>')

--move multi-lines in visual mode
keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

--split window
keymap.set('n', '<leader>sv', '<C-w>v')
keymap.set('n', '<leader>sh', '<C-w>s')

--switch among windows
keymap.set('n', '<leader>j', '<C-w>j')
keymap.set('n', '<leader>k', '<C-w>k')
keymap.set('n', '<leader>h', '<C-w>h')
keymap.set('n', '<leader>l', '<C-w>l')
keymap.set('n', '<leader>c', '<C-w>c')
keymap.set('n', '<leader>o', '<C-w>o')

--switch buffer
keymap.set('n', '<C-L>', ':bnext<CR>')
keymap.set('n', '<C-H>', ':bprevious<CR>')

--cancel search highlight
keymap.set('n', '<leader>nh', ':nohl<CR>')

--open nvim-tree shortcut
keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
keymap.set('n', '<leader>f', ':NvimTreeFindFile<CR>')
keymap.set('n', '<leader>tp', ':NvimTreeResize +20<CR>')
keymap.set('n', '<leader>tm', ':NvimTreeResize -20<CR>')

--golang format
keymap.set('n', '<leader>gf', ':!gofmt -w %<CR> :e<CR> :w<CR>')

--nvim-dap-ui
keymap.set('n', '<F5>', require 'dap'.continue)
keymap.set('n', '<F8>', require 'dap'.step_over)
keymap.set('n', '<F7>', require 'dap'.step_into)
keymap.set('n', '<S-F8>', require 'dap'.step_out)
keymap.set('n', '<leader>b', require 'dap'.toggle_breakpoint)
