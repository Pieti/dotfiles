" ===============================================
" # GENERAL CONFIG
" ===============================================

set encoding=utf-8
set nocompatible

" Space is a handy leader
let mapleader = "\<Space>"

syntax on

set nobackup
set nowritebackup
set noswapfile
set showcmd                         " display incomplete commands
set incsearch                       " do incremental searching
set laststatus=2                    " always display the status line
set autowrite                       " autowrite before running commands
set modelines=0                     " disable modelines as a security precaution
set nomodeline
set ignorecase                      " ignore case when searching
set smartcase                       " unless the search contains a capital letter
set noerrorbells visualbell t_vb=   " disable error sounds and flashes
set t_md=                           " disable bold font
set cmdheight=2                     " git a bit more room for commands
set updatetime=300                  " avoid delays by using shorter updatetime
set ruler                           " show the cursor position at all times
set scrolloff=5                     " scroll the screen before reaching the edge

set number                          " show line numbers
set relativenumber                  " ...relative to the cursor

" indentation, a tab is four spaces wide
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set expandtab                       " convert tabs to spaces

" display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" user one space, not two, after punctuation
set nojoinspaces

" Enable mouse in terminals
set mouse=a

" Open new split panes to right and bottom
set splitbelow
set splitright

set lazyredraw

" Always use vertical diffs
set diffopt+=vertical

" Enable filetype detection
filetype plugin indent on


" === VARIABLES ===

" When the type of shell script is /bin/sh, assume a POSIX-compatible
" shell for syntax highlighting
let g:is_posix=1

" Enable async only configuration
let g:has_async = v:version >=800 || has('nvim')


" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'


" === KEY MAPPING ===

nmap Q <Nop>

" Move lines around
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>
vnoremap <S-Up> :m '<-2<CR>gv=gv
vnoremap <S-Down> :m '>+1<CR>gv=gv

" Window movement with CTRL
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Open hotkeys
map <C-p> :Files<CR>
nmap <leader>; :Buffers<CR>

" Quick save
noremap <Leader>w :update<CR>

" Clone paragraph
noremap cp yap<S}>p

" Align paragraph
noremap <leader>a = ip

" Fast quit
noremap <leader>q :q<cr>

" Fast save
noremap <leader>w :w<cr>

" CTRL+h to stop search highlighting
vnoremap <C=h> :nohlsearch<cr>
nnoremap <C=h> :nohlsearch<cr>

" Shortcuts to system registers
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+Y
noremap <Leader>P "+P

