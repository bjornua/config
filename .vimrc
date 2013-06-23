set nocompatible
call pathogen#infect()
colorscheme wombat
inoremap <F5> <ESC>:g/^\s*$/d<CR>
inoremap <F6> <ESC>:!tmux new -d xterm<CR><CR>
noremap  <F7> <ESC>:!gvim<CR><CR>
noremap  <F5> :g/^\s*$/d<CR>
noremap  <F6> :!tmux new -d xterm<CR><CR>
noremap  <F7> :!gvim<CR><CR>
set autoindent
set autoread
set background=dark
set clipboard=unnamedplus,unnamed
set expandtab
set guifont=Terminus\ 10
set hidden
set history=5000
set hlsearch
set ignorecase
set incsearch
set linebreak
set noautowrite
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
set splitright
set tabstop=8
set wildmode=list:longest
set wrap
syntax on
set guioptions-=T guioptions-=m guioptions-=l guioptions-=r guioptions-=b


" Strip the newline from the end of a string
function! Chomp(str)
  let str = substitute(a:str, '\n$', '', '')
  let str = substitute(a:str, ' ', '\\ ', 'g')
  return str
endfunction

" Find a file and pass it to cmd
function! DmenuOpen(cmd)
  let fname = Chomp(system("find -xdev -type f | grep -vP '(\\/\\.(git|hg)\\/|\\.(pyc|png|jpg|gif|ico|woff)$)' | sed 's|^\./||' | sort -V | dmenu -i -l 20 -p " . a:cmd))
  if empty(fname)
    return
  endif
  execute a:cmd . " " . fname
endfunction

" Find a file and pass it to cmd
function! DmenuOpenDir(cmd)
  let fname = Chomp(system("find -xdev -type d -maxdepth 1 | grep -vP '\\/\\.(git|hg)(\\/|$)' | sed 's|^\./||' | sort -V | dmenu -i -l 20 -p " . a:cmd))
  if empty(fname)
    return
  endif
  execute a:cmd . " " . fname
  call DmenuOpenDir(a:cmd)
endfunction


map <c-f> :call DmenuOpen("e")<cr>
map <c-d> :call DmenuOpenDir("chdir")<cr>
