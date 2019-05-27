call plug#begin('~/.vim/plugged')

    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'altercation/vim-colors-solarized'
    Plug 'jiangmiao/auto-pairs'
    Plug 'calviken/vim-gdscript3'
    Plug 'neovimhaskell/haskell-vim'
    Plug 'mattn/emmet-vim'
    Plug 'lukaszb/vim-web-indent'

call plug#end()

" Plugin Options
colorscheme solarized
map <C-n> :NERDTreeToggle<CR>
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
