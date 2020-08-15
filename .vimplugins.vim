call plug#begin('~/.vim/plugged')

    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'altercation/vim-colors-solarized'
    Plug 'jiangmiao/auto-pairs'
    Plug 'calviken/vim-gdscript3'
    Plug 'neovimhaskell/haskell-vim'
    Plug 'mattn/emmet-vim'
    Plug 'lukaszb/vim-web-indent'
    Plug 'alvan/vim-closetag'

call plug#end()

" Plugin Options
colorscheme solarized
autocmd FileType html,css EmmetInstall
if has("gui_running")
    set g:solarized_contrast = "normal"
    set g:solarized_visibility = "low"
endif

map <C-n> :NERDTreeToggle<CR>

let g:user_emmet_install_global = 0
let g:closetag_filetypes = 'html,xhtml,phtml'
