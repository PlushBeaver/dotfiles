" Options for clang completer plugin.
let g:clang_c_options = '-std=c++14'
let g:clang_cpp_options = '-std=c++14 -stdlib=libc++'

" Setup Pathogen plugin (runtimepath) manager as submodule.
"runtime 'bundle/vim-pathogen/autoload/pathogen.vim'
"execute pathogen#infect()

" Enable indentation based on file type.
filetype plugin indent on

" Language mapping allows the use of shortcuts even in Russian layout.
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>

set nu              " number lines

set hlsearch        " highlight search results
set incsearch       " incremental search (as you type)
set showmatch       " move to the match

set wrap                " enable word-wrap
set linebreak           " break lines at word-wraps
set nolist              " list disables linebreak
set formatoptions+=l    " do not apply word-wrap to newly entered text

set tabstop=4       " tabulation settings compatible to `filetype plugin indent'
set softtabstop=4
set shiftwidth=4
set expandtab

colorscheme elflord

" <Ctrl>+<L> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Workaround 7-bit terminal input mode. TODO: adjust setting system-wide.
map j <A-j>
map k <A-k>

" Move entire lines down & up.
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
