local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "

-- Telescope
keymap("n", "<C-p>", "<Esc>:Telescope<CR>", opts)
keymap("n", "<Leader>ps","<Esc>:lua require('telescope.builtin').grep_string({ search = vim.fn.input(\"Grep for > \")})<CR>", opts)
keymap("n", "<Leader>pf","<Esc>:lua require('telescope.builtin').find_files()<CR>", opts)

-- Telekasten
keymap("n", "<Leader>z", "<Esc>:lua require('telekasten').panel()<CR>", opts)
keymap("n", "<Leader>zb", "<Esc>:lua require('telekasten').follow_link()<CR>", opts)
keymap("n", "<Leader>zg", "<Esc>:lua require('telekasten').search_notes()<CR>", opts)
keymap("n", "<Leader>zd", "<Esc>:lua require('telekasten').find_daily_notes()<CR>", opts)
