set nocompatible
set nofoldenable
set nospell

set autoindent
set hlsearch
set ignorecase
set incsearch
set ruler
set showcmd
set showmatch
set showmode
set smartindent

set bg=dark
set encoding=utf-8
set laststatus=2
set spelllang=en
set spelllang+=fr
set t_Co=256
set colorcolumn=81

if has('mouse')
  set mouse=n
endif

filetype plugin indent on
syntax enable

au BufRead,BufNewFile *.t set filetype=sh

au FileType make,c,h,cpp,sh	setlocal ts=8 sw=8 noet
au FileType python		setlocal ts=4 sw=4 et
au FileType yaml,html		setlocal ts=2 sw=2 et
au FileType markdown		setlocal ts=2 sw=2 et spell
au FileType text		setlocal tw=80 spell
au FileType mail		setlocal noai

silent !mkdir -p ~/.vim/{backup,swp}/
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//
au FileType crontab setlocal bkc=yes
