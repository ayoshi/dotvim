" setup TFS integration
function! Tfcheckout()
   exe '!tf checkout "' expand('%:p') '"'
endfunction
command! Tfcheckout :call Tfcheckout()

function! Tfcheckin()
   exe '!tf checkin "' expand('%:p') '"'
endfunction
command! Tfcheckin :call Tfcheckin()

function! TFhistory()
   if bufnr("TFhistory") >0
      exe "sb TFhistory"
   else
      exe "split TFhistory"
   endif
   setlocal noswapfile
   set buftype=nofile
   setlocal modifiable
   silent! exe 'tf history "#"'
   setlocal nomodified
   normal 1G
   wincmd J
endfunction
command! TFhistory :call TFhistory() 