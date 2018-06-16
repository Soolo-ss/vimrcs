set ts=4
set expandtab
set nu
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set encoding=utf-8

syntax on

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'tmhedberg/SimpyFold'
Plugin 'kien/ctrlp.vim'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'davidhalter/jedi-vim'


#需要安装ac 见github
Plugin 'mileszs/ack.vim'


call vundle#end()

filetype plugin indent on


nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set foldmethod=indent
set foldlevel=99


nnoremap <space> za

let mapleader=" "      "设置前缀

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab | 
    \ set autoindent |
    \ set fileformat=unix |

let python_highlight_all=1

if has('gui_running')
    set background=dark
    colorscheme solarized
else
    colorscheme zenburn
endif

call togglebg#map("<F5>")


let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


let g:ctrlp_working_path_mode='/home/kbe/kbe_1.0.0/kbengine_ar_assets/scripts/'

map <F5> :call ComplieRunGcc()<CR>
func! ComplieRunGcc()
    exec "w"
    if &filetype == 'python'
        exec "!time python %"
    endif
endfunc

map <c-f> :Ack<space>
