" Fix shell
set shell=/bin/bash

" Not compatible with Vi
set nocompatible

" Vundle
source ~/.vimrc_vundle

" Bundles
source ~/.vimrc_bundles

" User files (optional)
silent! source ~/.vimrc_user

" Navigation
set mouse=a
set foldmethod=syntax
set foldlevelstart=99
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
nnoremap  <tab> :bn<CR>
nnoremap  <S-tab> :bp<CR>
nnoremap  <Space>  za

" Relative line numbers
set number

" Fix backspace
set backspace=indent,eol,start

" Display
set encoding=utf-8
set t_Co=256
colorscheme obsidian
syntax on
set cursorline
set nowrap
set splitbelow
set hidden

" Powerline
set laststatus=2

" Line End Column
set colorcolumn=81
highlight ColorColumn ctermbg=13

" Tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
let g:indentLine_char = '┆'
let g:indentLine_color_term = 128

" Searching
set hlsearch
set ignorecase
set smartcase

" NERDTree
map <C-e> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1

" :RTW = Remove Trailing Whitespace
command RTW :%s/\s\+$//e

" :CDC = Change to Directory of Current file
command CDC cd %:p:h

" Miscellaneous
set nospell
set list lcs=tab:\|\ ,trail:•,extends:#,nbsp:.
let g:autoclose_vim_commentmode = 1

