let s:curdir = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let &rtp.=','.s:curdir

" Set leader key
let mapleader = ','

" let s:nvim_py = '/usr/local/var/pyenv/versions/py3nvim/bin/python'
" if filereadable(expand('~/.vimrc'))
  " let g:python3_host_prog = s:nvim_py
" end

" Roughly set $SHELL to /bin/bash cause it's the most compatible shell with scripts in
" vim plugins. Some bugs can't be easily fixed in vim plugins such as: https://github.com/liuchengxu/vista.vim/issues/305
" remove ^@ charactors in system function output, ^@ means null or linefeed
let $SHELL = system('which bash')[:-2]

" Load configs
for fpath in split(globpath(expand(s:curdir.'/vscode'), '*.vim'), '\n')
  exe 'source' fpath
endfor

" Options setup ============================================================={{{

" colorscheme dracula
set mouse=a
set nocompatible
set hidden
set encoding=UTF-8
set termguicolors
" Highlight curcur
set cursorcolumn
set cursorline
" Max pattern match memory
set maxmempattern=5000
set lazyredraw
set autoread
set hlsearch
set showmode
" Code fold
set foldmethod=indent
set foldlevel=99
" Default tab width = 2 space
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
" backspace
set backspace=indent,eol,start " backspace over everything in insert mode
" time in milliseconds to wait for a mapped sequence to complete
set timeoutlen=700
" reserve screen after quiting
set t_ti= t_te=
set clipboard+=unnamedplus

" }}}
