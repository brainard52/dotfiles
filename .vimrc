" Vimscript stuff
scriptencoding utf-8
set encoding=utf-8

source ~/.vimplugins.vim

" GUI settings
if has("gui_running")
    set guioptions=egi
    set guifont=QuinzeNarrow:h24,Iosevka-Term:h16,Courier:h14 " Don't put a space after the commas.
    if(&guifont == "QuinzeNarrow:h24,") "Quinze is too tall. Chopping it down a few pixels.
        set lsp=-4
	set belloff " because macvim is one noisy mf.
    endif
endif

" General
set nocompatible
syntax on
set list
set listchars=tab:\ \ ,trail:\·
set nu
set splitbelow
set splitright
set relativenumber
call matchadd('ColorColumn',  '\%81v', 100)
set nrformats+=alpha
set mouse=
set ttymouse=
set fillchars+=vert:│

" theme
" set termguicolors
" set background=dark

" Keeps working directory clean
if ! isdirectory('~/.vim/swap/')
  silent! call system('install -dm 700 ~/.vim/swap')
endif
set directory=$HOME/.vim/swap//

" Formatting and input
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set cindent
filetype indent plugin on
set backspace=indent,eol,start

au BufNewFile,BufRead *.py :set tabstop=4
au BufNewFile,BufRead *.py :set softtabstop=4
au BufNewFile,BufRead *.py :set shiftwidth=4
au BufNewFile,BufRead *.py :set expandtab
au BufNewFile,BufRead *.py :set autoindent
au BufNewFile,BufRead *.py :set fileformat=unix

au BufNewFile,BufRead *.gd :set tabstop=4
au BufNewFile,BufRead *.gd :set softtabstop=4
au BufNewFile,BufRead *.gd :set shiftwidth=4
au BufNewFile,BufRead *.gd :set expandtab
au BufNewFile,BufRead *.gd :set autoindent
au BufNewFile,BufRead *.gd :set fileformat=unix

au BufNewFile,BufRead *.asm :set nocindent
au BufNewFile,BufRead *.asm :set nosmartindent
au BufNewFile,BufRead *.asm :set autoindent
au BufNewFile,BufRead *.asm :set tabstop=4
au BufNewFile,BufRead *.asm :set softtabstop=4
au BufNewFile,BufRead *.asm :set shiftwidth=4
au BufNewFile,BufRead *.asm :set expandtab
au BufNewFile,BufRead *.asm :set autoindent
au BufNewFile,BufRead *.asm :set fileformat=unix

au BufNewFile,BufRead *.ts :set nocindent
au BufNewFile,BufRead *.ts :set nosmartindent
au BufNewFile,BufRead *.ts :set autoindent
au BufNewFile,BufRead *.ts :set tabstop=2
au BufNewFile,BufRead *.ts :set softtabstop=2
au BufNewFile,BufRead *.ts :set shiftwidth=2
au BufNewFile,BufRead *.ts :set expandtab
au BufNewFile,BufRead *.ts :set autoindent
au BufNewFile,BufRead *.ts :set fileformat=unix

au BufNewFile,BufRead *.html :set nocindent
au BufNewFile,BufRead *.html :set nosmartindent
au BufNewFile,BufRead *.html :set autoindent
au BufNewFile,BufRead *.html :set tabstop=1
au BufNewFile,BufRead *.html :set softtabstop=1
au BufNewFile,BufRead *.html :set shiftwidth=1
au BufNewFile,BufRead *.html :set expandtab
au BufNewFile,BufRead *.html :set autoindent
au BufNewFile,BufRead *.html :set fileformat=unix

" Clear search highlighting
command ClearSearch let @/=""
