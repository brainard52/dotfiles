" Vimscript stuff
scriptencoding utf-8
set encoding=utf-8

" GUI settings
if has("gui_running")
    set guioptions=egi
    set guifont=QuinzeNarrow:h24,Iosevka-Term:h16,Courier:h14 " Don't put a space after the commas.
    if(&guifont == "QuinzeNarrow:h24,") "Quinze is too tall. Chopping it down a few pixels.
        set lsp=-4
    set g:solarized_contrast = "normal"
    set g:solarized_visibility = "low"
	set belloff " because macvim is one noisy mf.
    endif
endif

" General
set nocompatible
source ~/.vimplugins.vim
syntax on
set list
set listchars=tab:\ \ ,trail:‣
set nu
set splitbelow
set splitright
set relativenumber
call matchadd('ColorColumn',  '\%81v', 100)

" theme
set termguicolors
set background=dark
colorscheme solarized

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

au BufNewFile,BufRead *.py :set tabstop=4
au BufNewFile,BufRead *.py :set softtabstop=4
au BufNewFile,BufRead *.py :set shiftwidth=4
au BufNewFile,BufRead *.py :set expandtab
au BufNewFile,BufRead *.py :set autoindent
au BufNewFile,BufRead *.py :set fileformat=unix

au BufNewFile,BufRead *.gd :set tabstop=8
au BufNewFile,BufRead *.gd :set softtabstop=8
au BufNewFile,BufRead *.gd :set shiftwidth=8
au BufNewFile,BufRead *.gd :set noexpandtab
au BufNewFile,BufRead *.gd :set autoindent
au BufNewFile,BufRead *.gd :set fileformat=unix
