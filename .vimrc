set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" vundle plugin install with :PluginInstall
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tpope/vim-commentary'
Plugin 'sheerun/vim-polyglot'

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" map Shift-Z-Z to :xa
nmap <S-Z>Z :xa<Enter>

" disable autocommenting on a newline
set formatoptions-=cro

" set clipboard
set clipboard=unnamed

" set numbers
set number relativenumber

"ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']

" open nerd tree automatically and move cursor to main window
" autocmd VimEnter * NERDTree
" autocmd VimEnter * execute "normal \<C-W>l"

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

" change cholorscheme between dark and light
call togglebg#map("<F5>")

" Python PEP 8 indentation
au Filetype python set
     \ tabstop=4
     \ softtabstop=4
     \ shiftwidth=4
     \ textwidth=79

" remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e
"silent! :%s/\s\+$//

set encoding=utf-8

" python color syntax
let python_highlight_all=1
syntax on

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
