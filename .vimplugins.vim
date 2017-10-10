call plug#begin('~/.vim/plugged')

	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'altercation/vim-colors-solarized'
    Plug 'jiangmiao/auto-pairs'

    Plug 'luochen1990/rainbow'
    let g:rainbow_active = 1
    
"   Plug 'davidhalter/jedi-vim'
"	Plug 'valloric/youcompleteme'
	

"	Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

call plug#end()

