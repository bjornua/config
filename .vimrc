set nocompatible
call pathogen#infect()
colorscheme wombat
inoremap <F1> <ESC>:FufBuffer<CR>
inoremap <F2> <ESC>:FufFile **/<CR>
inoremap <F3> <ESC>:FufDir<CR>
inoremap <F4> <ESC>:FufRenewCache<CR>
inoremap <F5> <ESC>:g/^\s*$/d<CR>
inoremap <F6> <ESC>:!urxvtc<CR><CR>
noremap  <F1> :FufBuffer<CR>
noremap  <F2> :FufFile **/<CR>
noremap  <F3> :FufDir<CR>
noremap  <F4> :FufRenewCache<CR>
noremap  <F5> :g/^\s*$/d<CR>
noremap  <F6> :!urxvtc<CR><CR>
set autoindent
set autoread
set background=dark
set clipboard=unnamedplus,unnamed
set guifont=Inconsolata-g\ Medium\ 12
set hidden
set history=5000
set hlsearch
set ignorecase
set incsearch
set linebreak
set noautowrite
set nobackup
set nobackup
set noerrorbells
set noswapfile
set novisualbell
set nowritebackup
set number
set ruler
set scrolloff=10
set shiftwidth=4
set showcmd
set showmode
set softtabstop=4
set tabstop=8
set wildmode=list:longest
set wrap
set expandtab
syntax on
set guioptions-=T guioptions-=m guioptions-=l guioptions-=r guioptions-=b
let g:fuf_file_exclude = '\v\~$|\/?\.git\/|\.png$|\.jpg$|\.pyc|\.woff$'
