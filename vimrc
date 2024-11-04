
set autoindent
set backspace=indent,eol
set bg=dark
set encoding=utf-8
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=trail:$,nbsp:⍽
set nocompatible
set nofoldenable
set nolist
set nospell
set ruler
set showcmd
set showmatch
set showmode
set smartindent
set spelllang=en
set spelllang+=fr
set t_Co=256

silent !mkdir -p ~/.vim/{backup,swp}/
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//

if has('mouse')
  set mouse=n
endif

filetype plugin indent on
syntax enable

au BufRead,BufNewFile *.t set filetype=sh

au FileType make,c,h,cpp,sh		setlocal ts=8 sw=8 noet nolist
au FileType python,groovy,javascript	setlocal ts=4 sw=4 et list
au FileType html,xml,yaml		setlocal ts=2 sw=2 et list
au FileType markdown,asciidoc		setlocal ts=2 sw=2 et list spell
au FileType text,gitcommit		setlocal spell
au FileType mail			setlocal noai
au FileType crontab 			setlocal bkc=yes
