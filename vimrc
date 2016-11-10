" =================================================================
"                              .vimrc
" =================================================================

"===============================
"  Plugins Managed with Vundle
"===============================

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/nerdcommenter'
Plugin 'elixir-lang/vim-elixir'

call vundle#end()
filetype plugin indent on

"=====================
"    End of Plugins
"=====================

set cursorline
set noswapfile
set number
let g:solarized_termcolors=256
set background=dark
syntax enable
colorscheme solarized
let g:solarized_contrast  = 'high'

" Tab Setup
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

map <C-n> :NERDTreeToggle<CR>

nmap 0 ^
nmap k gk
nmap j gj
nmap nj :w<CR>
nmap qq :q<CR>

imap nj <esc>:w<CR>
imap jn <esc>:w<CR>
imap jk <esc>
imap kj <esc>

let mapleader = "\<Space>"

nmap <leader>vr :sp $MYVIMRC<CR>
nmap <leader>so :source $MYVIMRC<CR>
nmap <leader><leader> i<CR><esc>
nmap <leader>0 $
nmap <leader>h <c-w>h
nmap <leader>j <c-w>j
nmap <leader>k <c-w>k
nmap <leader>l <c-w>l
nmap <leader><leader>h <c-w>H
nmap <leader><leader>j <c-w>J
nmap <leader><leader>k <c-w>K
nmap <leader><leader>l <c-w>L

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <leader>n :call NumberToggle()<cr>

" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

" The Silver Searcher
 if executable('ag')
   " Use ag over grep
   set grepprg=ag\ --nogroup\ --nocolor
   " Use ag in CtrlP for listing files. Lightning fast and respects  .gitignore
   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    "ag is fast enough that CtrlP doesn't need to cache
   let g:ctrlp_use_caching = 0
 endif
