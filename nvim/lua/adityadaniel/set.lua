local options = {
    clipboard = "unnamedplus",
    termguicolors = true,
    swapfile = false,
    fileencoding = "utf-8",
	scrolloff = 8,
	hlsearch = true,
	tabstop = 4,
	softtabstop = 4,
	shiftwidth = 4,
	expandtab = true,
	smartindent = true,
    number = true,
	relativenumber = true,
	signcolumn = "yes",
	hidden = true,
	undodir = os.getenv("HOME") .. "/.config/nvim/undodir",
	undofile = true,
	incsearch = true,
	cmdheight = 1,
	updatetime = 50,
	colorcolumn = "100",
    splitbelow = true,
    splitright = true,
    backup = false,
    wrap = false,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.opt.shortmess:append "c"
