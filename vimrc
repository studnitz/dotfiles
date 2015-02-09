set nocompatible
execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set smartcase
set mouse=a
set background=dark
colorscheme solarized
set cursorline
set colorcolumn=80
"Backup in seperate folders to keep directories clean
set backupdir=./.backup,.,/tmp
set directory=.,./.backup,/tmp
