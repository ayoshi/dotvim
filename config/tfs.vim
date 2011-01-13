" setup TFS integration
function! Tfcheckout()
   exe '!tf checkout ' expand('%:p') ''
endfunction
command! Tfcheckout :call Tfcheckout()

function! Tfcheckin()
   exe '!tf checkin ' expand('%:p') ''
endfunction
command! Tfcheckin :call Tfcheckin()

function! Tfundo()
   exe '!tf undo ' expand('%:p') ''
endfunction
command! Tfundo :call Tfundo()


function! Tfcommit()
   exe '!tf checkin ' expand('%:p') ''
   exe '!tf checkout ' expand('%:p') ''
endfunction
command! Tfcommit :call Tfcommit()

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
command! Tfhistory :call TFhistory() 
