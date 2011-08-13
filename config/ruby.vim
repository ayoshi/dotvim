""""""""""""""""""""""""""""""""
"" Set Ruby-specific keybindings
""""""""""""""""""""""""""""""""

autocmd FileType ruby  call LoadRubyKeybindings()
autocmd FileType eruby call LoadRubyKeybindings()
autocmd FileType haml  call LoadRubyKeybindings()
autocmd FileType yaml  call LoadRubyKeybindings()

fun LoadRubyKeybindings()
   " bind control-l to hashrocket
   imap <buffer> <C-l> <Space>=><Space>"

   " bind control-k to turn the current word into a symbol
   imap <buffer> <C-k> <C-o>b:<Esc>Ea
   nmap <buffer> <C-k> lbi:<Esc>E

   " set the foldmethod to 'syntax'
   setlocal foldmethod=syntax
   setlocal foldlevel=2
endfun

" Remap ruby debugger keys
" 
map \b :call g:Rdebugger.toggle_breakpoint()<CR>
map \v :call g:Rdebugger.open_variables()<CR>
map \m :call g:Rdebugger.open_breakpoints()<CR>
map \t :call g:Rdebugger.open_frames()<CR>
map \s :call g:Rdebugger.step()<CR>
map \f :call g:Rdebugger.finish()<CR>
map \n :call g:Rdebugger.next()<CR>
map \c :call g:Rdebugger.continue()<CR>
map \e :call g:Rdebugger.exit()<CR>
map \d :call g:Rdebugger.remove_breakpoints()<CR>
