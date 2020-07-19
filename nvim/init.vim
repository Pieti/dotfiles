" Shared or Vim specific config should be in ~/.vimrc
" With this setup Vim stays lightweight and can be used anywhere without
" installing plugins, while Neovim is geared towards being a heavyweight code editor

source ~/.vimrc

" =============================================================================
" # PLUGINS
" =============================================================================
call plug#begin()

Plug 'editorconfig/editorconfig-vim'    " editorconfig support
Plug 'justinmk/vim-sneak'               " jump to any location specified by two characters (s{char}{char})
Plug 'tpope/vim-vinegar'                " enhanced netrw for directory browsing

Plug 'itchyny/lightline.vim'            " light and configurable statusline
Plug 'machakann/vim-highlightedyank'    " highlight yank

call plug#end()

" =============================================================================
" # NeoVim specific config
" =============================================================================
