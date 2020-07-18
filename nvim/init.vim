source ~/.vimrc

" =============================================================================
" # PLUGINS
" =============================================================================
call plug#begin()

Plug 'tpope/vim-sensible'               " sensible default options
Plug 'editorconfig/editorconfig-vim'    " editorconfig support
Plug 'justinmk/vim-sneak'               " jump to any location specified by two characters (s{char}{char})
Plug 'tpope/vim-vinegar'                " enhanced netrw for directory browsing

Plug 'itchyny/lightline.vim'            " light and configurable statusline
Plug 'machakann/vim-highlightedyank'    " highlight yank

call plug#end()

