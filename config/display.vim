"""""""""""""""""""""""""""""""""""""""""""""""""""
"" loads display-related option (colorscheme, etc.)
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings are specific for solarized colorscheme - require solarized terminal
" color settings

colorscheme solarized
set background=dark
let g:CSApprox_loaded = 1

set laststatus=2   " always display a status line
set number         " show line numbers
set showcmd        " display unfinished commands
set showmatch      " show matching bracket (briefly jump)
set title          " show file in titlebar
set foldcolumn=3   " show folding column to make 2-level folding visualy comfortable
" Disable all bells
set vb t_vb=
