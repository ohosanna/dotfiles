call plug#begin('~/.vim/bundle')
" MISC tools ================================================================{{{
" Modify surround characters
Plug 'tpope/vim-surround'
" }}}

Plug 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims=1

Plug 'Yggdroot/indentLine'
let g:indentLine_char = '|'
let g:indentLine_enabled = 0
nnoremap <leader>ig :IndentLinesToggle <CR>

" Rainbow parentheses
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1
let g:rainbow_conf = {
\	'guifgs':   ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\		'tex': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\		},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\		},
\		'vim': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\		},
\		'html': {
\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\		},
\		'css': 0,
\	}
\}

" Code tools ================================================================{{{
" Auto complete for quote marks
Plug 'Raimondi/delimitMate'

" Auto complete for html/xml tags
Plug 'docunext/closetag.vim'
let g:closetag_html_style=1
" }}}
call plug#end()
