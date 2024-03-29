"Install vim-plug"
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"Vim configs"
set encoding=UTF-8
syntax on
set number
set autoindent " always set autoindenting on
set copyindent " copy the previous indentation on autoindenting
set expandtab " expand tabs by default (overloadable per file type)
set shiftround " use multiple of shiftwidth when indenting with '<' and '>'
set shiftwidth=2 " number of spaces to use for autoindenting
set smartindent
set smarttab " insert tabs on the start of a line according to shiftwidth, not tabstop
set softtabstop=2 " when hitting <BS>, pretend like a tab is removed, even if spaces
set tabstop=2 " tabs are n spaces
"Install plugin"
call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'jiangmiao/auto-pairs'
  Plug 'itchyny/lightline.vim'
call plug#end()
"Mam F2 to open NERDTree
map <F2> :NERDTreeToggle<CR>

set laststatus=2
