call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jdhao/better-escape.vim'
Plug 'rust-lang/rust.vim'
Plug 'lervag/vimtex'
" Plug 'morhetz/gruvbox'
" Plug 'ghifarit53/tokyonight-vim'
" Plug 'vim-airline/vim-airline'
call plug#end()
set number
"let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
"let g:airline_theme='badwolf'
" set cursorline
" set cursorcolumn
set nocompatible
filetype on 
filetype plugin on
filetype indent on 
syntax on 
filetype plugin indent on
" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

set guicursor=n-v-c-i:block
set clipboard+=unnamedplus

" set termguicolors
" colorscheme tokyonight
" set bg=dark
" colorscheme gruvbox
"

" VIMTEX CONFIG
" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'zathura'

" Or with a generic interface:
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
let g:vimtex_compiler_method = 'latexmk'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
let maplocalleader = ","
