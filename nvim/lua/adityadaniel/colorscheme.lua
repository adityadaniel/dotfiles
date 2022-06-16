vim.cmd [[
    try
          set background=dark
          let g:gruvbox_material_background = 'hard'
          colorscheme gruvbox-material
    catch /^Vim\%((\a\+)\)\=:E185/
          colorscheme default
          set background=dark
    endtry
]]

