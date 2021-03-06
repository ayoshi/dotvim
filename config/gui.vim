" Gui configuration
if has("gui_running")

  " Basic GUI options  
  "
   set guioptions=ac
   set guioptions-=m  "remove menu bar
   set guioptions-=T  "remove toolbar
   set guioptions-=r  "remove right-hand scroll bar

   " Mouse 
   set mousehide  " Hide mouse after chars typed
   set mouse=a  " Mouse in all modes

  if has("gui_gtk2")

  set guifont=Monospace

  elseif has("gui_gnome")

   set guifont=Monospace:s11

  elseif has("gui_kde")

   set guifont=Monospace/11/-1/5/50/0/0/0/1/0

  elseif has("gui_macvim")

    " In macvim , set Monaco as terminal font and transparency is available
    set transp=3
    set guifont=Inconsolata-dz\ for\ Powerline:h11
    set lines=50
    set columns=180
    " Lion fullscreen maximize only vertically
    set fuopt=maxvert  

  elseif has("x11")

   set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*

  else

    set guifont=Courier_New:h11:cDEFAULT

  endif

else
" Text mode
    set mouse=a

endif

" When close to the end of viewport move 3 lines 
set scrolloff=3
