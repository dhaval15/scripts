call plug#begin(stdpath('data') . '/plugged')

Plug 'sainnhe/gruvbox-material'
Plug 'vim-airline/vim-airline'

call plug#end()

set termguicolors

let g:airline_theme = 'gruvbox_material'
let g:gruvbox_material_background = 'medium'

colorscheme gruvbox-material

set number

set mouse=a

set cursorline

set nocompatible
filetype plugin on
syntax on
