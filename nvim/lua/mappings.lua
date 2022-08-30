local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}

vim.g.mapleader = ','

map('n', '<leader>t', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>.', ':cd %:h<CR>', opts)

map('n', 'J', ":m .+1<CR>==", opts)
map('v', 'J', ":m '>+1<CR>gv=gv", opts)

map('n', 'K', ":m .-2<CR>==", opts)
map('v', 'K', ":m '<-2<CR>gv=gv", opts)

map('n', '<leader>w', ':w<CR>', opts)

map('n', '<leader>ch', ':noh<CR>', opts)

map('n', '<leader>y', '"*y', opts)
map('v', '<leader>y', '"*y', opts)

map('n', '<leader>e', 'mmo<ESC>`m', opts)
map('n', '<leader>E', 'mmO<ESC>`m', opts)

map('n', '<leader>ff', ':lua require("telescope.builtin").find_files()<CR>', opts)
map('n', '<leader>pwd', '<C-G>', opts)
map('n', '<leader>r', '<C-O>', opts)

-- sample for syntax, use to toggle between themes
-- vim.api.nvim_set_keymap('n', '<leader>mm', [[<Cmd>lua require('material.functions').toggle_style()<CR>]], opts)
