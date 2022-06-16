local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "

keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Telescope
keymap("n", "<C-p>", "<Esc>:Telescope<CR>", opts)
keymap("n", "<Leader>ps","<Esc>:lua require('telescope.builtin').grep_string({ search = vim.fn.input(\"Grep for > \")})<CR>", opts)
keymap("n", "<Leader>pf","<Esc>:lua require('telescope.builtin').find_files()<CR>", opts)
