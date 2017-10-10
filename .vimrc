source ~/.vimplugins.vim

" Vim Color Scheme
syntax on
"set background=dark
"colorscheme solarized

" Visuals
set listchars=tab:•-
set nu
set relativenumber
set cursorline
call matchadd('ColorColumn',  '\%81v', 100)

" Formatting and input
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set cindent
filetype indent plugin on
set backspace=indent,eol,start
map <C-n> :NERDTreeToggle<CR>

" General
set nocompatible

au BufNewFile,BufRead *.py :set tabstop=4
au BufNewFile,BufRead *.py :set softtabstop=4
au BufNewFile,BufRead *.py :set shiftwidth=4
au BufNewFile,BufRead *.py :set expandtab
au BufNewFile,BufRead *.py :set autoindent
au BufNewFile,BufRead *.py :set fileformat=unix

