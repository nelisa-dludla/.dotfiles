local keymap = vim.keymap
local builtin = require('telescope.builtin')

-- Set leader key to Space
vim.g.mapleader = ' '

-- Open inline command line
vim.api.nvim_set_keymap('n', '<leader>c', ':! ', { noremap = true })

-- Toggle NvimTree
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true })

-- Clear search highlights
keymap.set('n', '<leader>nh', ':nohl<CR>')

-- WINDOW MANAGEMENT
-- Split window vertically
keymap.set('n', '<leader>sv', '<C-w>v')

-- Split window horizonatally
keymap.set('n', '<leader>sh', '<C-w>s')

-- Make split windows split equal width & height
keymap.set('n', '<leader>se', '<C-w>=')

-- Switch/cycle between active windows
keymap.set('n', '<C-s>', '<C-w>w')

-- Close current split window
keymap.set('n', '<leader>sx', ':close<CR>')

-- Open new tab
keymap.set('n', '<leader>to', ':tabnew<CR>')

-- Close current tab
keymap.set('n', '<leader>tx', ':tabclose<CR>')

-- Go to next tab
keymap.set('n', '<leader>tn', ':tabn<CR>')

-- Go to previous tab
keymap.set('n', '<leader>tp', ':tabp<CR>')

-- Reconfig half page vertical movements to center cursor
keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')
keymap.set('n', 'n', 'nzz')

-- For telescope
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})
