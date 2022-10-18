require "adityadaniel.set"
require "adityadaniel.plugins"
require "adityadaniel.keymaps"
require "adityadaniel.colorscheme"
require "adityadaniel.lsp"
require "adityadaniel.cmp"


vim.cmd [[
    au BufNewFile,BufRead Appfile set ft=ruby
    au BufNewFile,BufRead Deliverfile set ft=ruby
    au BufNewFile,BufRead Fastfile set ft=ruby
    au BufNewFile,BufRead Gymfile set ft=ruby
    au BufNewFile,BufRead Matchfile set ft=ruby
    au BufNewFile,BufRead Snapfile set ft=ruby
    au BufNewFile,BufRead Scanfile set ft=ruby
]]
