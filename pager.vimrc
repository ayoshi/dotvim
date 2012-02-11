" Globally applicable settings should be applied here, as well as anything else
" that needs to be loaded before the config files get executed.

" don't try to play nice with vi
set nocompatible

" allow buffers to be hidden when they're not saved
set hidden

" use ; for <Leader>
let mapleader = ";"    

" turn filetype settings off so that stuff gets loaded from pathogen
filetype off

"Keep tempfiles in place
source config/tempfiles.vim

" Add plugins which require ruby only if we have it compiled in
"if has("ruby") 
	"call pathogen#runtime_prepend_subdirectories('~/.vim/bundle-ruby')
"endif

" Add plugins which require python only if we have it compiled in
"if has("python") 
	"call pathogen#runtime_prepend_subdirectories('~/.vim/bundle-python')
"endif

" Pathogen: Load all plugins in the bundle directories
"call pathogen#runtime_append_all_bundles() 

"" Causes problems if bundles are git submodules , creates untracked tags files
"call pathogen#helptags()

" turn on all filetype settings, syntax, etc.
filetype plugin indent on
syntax on

" load everything else in its own config file
"runtime! config/**/*
set nonu
let no_plugin_maps = 1
set scrolloff=999
runtime! macros/less.vim
set foldlevel=999
set foldcolumn=0
set mouse=h
set laststatus=0
nmap <ESC>u :nohlsearch<cr>
