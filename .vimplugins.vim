call plug#begin('~/.vim/plugged')

    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'altercation/vim-colors-solarized'
    Plug 'jiangmiao/auto-pairs'
    Plug 'calviken/vim-gdscript3'
    Plug 'neovimhaskell/haskell-vim'
    Plug 'mattn/emmet-vim'
    Plug 'lukaszb/vim-web-indent'
    Plug 'alvan/vim-closetag'
    Plug 'connorholyday/vim-snazzy'
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'

call plug#end()

" Plugin Options
colorscheme snazzy
autocmd FileType html,css EmmetInstall

map <C-n> :NERDTreeToggle<CR>

let g:user_emmet_install_global = 0
let g:closetag_filetypes = 'html,xhtml,phtml'

let g:vim_markdown_folding_disabled = 1
