" shortcut settings
inoremap jk <ESC>

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
