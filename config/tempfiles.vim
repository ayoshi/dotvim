""""""""""""""""""""""""""""""""""""""""
"" settings controlling temporary/backup files
""""""""""""""""""""""""""""""""""""""""

set backupdir=~/.vim/_backups
set directory=~/.vim/_tmp

" Configure undo files (if we're in vim 7.3 and +persistent_undo has been
" compiled)
if has("persistent_undo")
   set undodir=~/.vim/_tmp
   set undofile
endif

" Configure .viminfo file location
set viminfo+=n~/.vim/_tmp/.viminfo

""
" Stop annoying me every time I have a file open in two different vim sessions.
" 'e' is "Edit Anyway" in this circumstance. Other options you could use here:
" 'q' - quit.
" 'o' - open the file in read-only mode.
" 'r' - recover the changes.
augroup SimultaneousEdits
   autocmd!
   autocmd  SwapExists  *  :let v:swapchoice = 'e'
augroup END
