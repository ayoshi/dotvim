"Buffergator - buffer navigation

map <Leader>b :BuffergatorToggle<CR>

" We will map manually to toggle
let g:buffergator_suppress_keymaps="1"

"Determines how a new Buffergator window will be opened. Can be one of the
"following values:
"L"   : vertical left (full screen height)
"R"   : vertical right (full screen height)
     "T"   : horizontal top (full screen width)
     "B"   : horizontal bottom (full screen width)
let g:buffergator_viewport_split_policy="L"

"If true, then selection an entry with <CR> will close the catalog. Otherwise,
"catalog stays open. Default is 1.
let g:buffergator_autodismiss_on_select="1"
    
"If true and running in GUI mode, then the application screen will be expanded
"to accommodate the Buffergator window.

let g:buffergator_autoexpand_on_split="0"


