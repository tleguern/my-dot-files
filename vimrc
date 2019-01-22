set nocompatible
set autoindent
set smartindent
set showmatch
set showcmd
set ruler
set hls
set incsearch
set t_Co=256
set encoding=utf-8
set bg=dark

let g:zenburn_high_Contrast=1
colors zenburn

if has('mouse')
  set mouse=n
endif

augroup filetypedetect
	au BufRead,BufNewFile *.t set filetype=sh
augroup END

filetype plugin indent on
syntax enable
