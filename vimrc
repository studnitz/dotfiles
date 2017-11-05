set nocompatible
execute pathogen#infect()
syntax on
set background=dark
filetype plugin indent on
set exrc
set secure

set number " line numbers
set smartcase
set mouse=a
set cursorline
set colorcolumn=80
set laststatus=2 "So we see airline
set hlsearch "So wee see search results
autocmd FileType text setlocal textwidth=78

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"Backup in seperate folders to keep directories clean
set backupdir=./.backup,.,/tmp
set directory=.,./.backup,/tmp

"▀▛▘     ▐           ▌ ▀▛▘  ▌     
" ▌▞▀▖▚▗▘▜▀  ▝▀▖▛▀▖▞▀▌  ▌▝▀▖▛▀▖▞▀▘
" ▌▛▀ ▗▚ ▐ ▖ ▞▀▌▌ ▌▌ ▌  ▌▞▀▌▌ ▌▝▀▖
" ▘▝▀▘▘ ▘ ▀  ▝▀▘▘ ▘▝▀▘  ▘▝▀▘▀▀ ▀▀ 

set expandtab "Use spaces instead of tabs
set smarttab
set shiftwidth=4 "1 Tab = 4 Spaces
set tabstop=4

set ai "auto indent
set si "smart indent
set wrap

let g:syntastic_c_compiler_options = 'std = -c11'
let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
