call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'vim-syntastic/syntastic'
Plug 'maksimr/vim-jsbeautify'
Plug 'morhetz/gruvbox'
Plug 'spf13/vim-autoclose'
Plug 'godlygeek/tabular'
Plug 'easymotion/vim-easymotion'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'

Plug 'othree/javascript-libraries-syntax.vim'

call plug#end()

let g:jsx_ext_required = 0
let g:javascript_plugin_jsdoc = 1
let g:used_javascript_libs = 'react,_,d3,chai'
autocmd BufReadPre *.js let b:javascript_lib_use_react = 1
autocmd BufReadPre *_test.js let b:javascript_lib_use_chai = 1

" ctrlp
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Syntastic
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
"
"""""

let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox
set number
"set nospell
set shiftwidth=2
set tabstop=2
"set smartindent
set expandtab
set tw=80

"Plugin 'isRuslan/vim-es6'
"Plugin 'mxw/vim-js'
