set nocompatible              " be iMproved, required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vv9k/vim-github-dark'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" airline settings
let g:airline_powerline_fonts = 1

" NERDTree settings
nnoremap <C-n> :NERDTreeFocus<CR>
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Show hidden file in NERDTree
let NERDTreeShowHidden=1

" fzf settings
nnoremap <C-p> :FZF!~<Cr>
let g:fzf_layout = {'down':'40%'}

" color scheme 
colorscheme ghdark
let g:gh_color = "soft"

" shortcut settings
inoremap jk <ESC>

" highlighting syntax
if has("syntax")
	syntax on
endif

" buffer setting
nnoremap <silent> <C-b> :buffers<CR>:buffer<Space>

" custom settings
set termguicolors
set hlsearch
set nu
set autoindent
set shiftwidth=4
set smartindent
set smarttab
set smartcase
set ts=4
set sts=4
set autowrite
set autoread
set noswapfile

set ignorecase

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
