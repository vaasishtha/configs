call plug#begin('~/.vim/plugged')
	Plug 'joshdick/onedark.vim'
	Plug 'ap/vim-css-color'
	Plug 'vim-airline/vim-airline'
	Plug 'scrooloose/nerdtree'
	Plug 'scrooloose/syntastic'
call plug#end()            

filetype plugin indent on   
syntax on
set autoread
set wildmenu
set noruler
set nocompatible
set number relativenumber
set colorcolumn=110
hi ColorColumn ctermbg=grey
set encoding=UTF-8
set splitbelow splitright
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartcase
set smartindent
set spelllang=en_us
set spell
hi clear SpellBad
hi SpellBad cterm=underline
set hls is
hi Search ctermfg=black ctermbg=grey
set laststatus=2
set cmdheight=1
set cursorline

colorscheme onedark

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#formatter = 'default'

"mappings
let mapleader=" "

map <C-n> :NERDTreeToggle<CR>
map <Leader><Space> :let @/=''<CR>
map <Leader><left> :vertical resize -5<CR>
map <Leader><right> :vertical resize +5<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <S-left> :tabprevious<CR>
map <S-right> :tabnext<CR>
