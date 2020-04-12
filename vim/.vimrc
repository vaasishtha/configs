let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	"alternatively, pass a path where Vundle should install plugins
	"call vundle#begin('~/some/path/here')

	Plugin 'VundleVim/Vundle.vim'
	Plugin 'junegunn/fzf.vim'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'scrooloose/nerdtree'
	Plugin 'scrooloose/syntastic'

call vundle#end()            " required

filetype plugin indent on    " required
set nocompatible
set number relativenumber
set colorcolumn=110
set encoding=utf-8
set splitbelow splitright
syntax on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#formatter = 'default'

"mappings
	map <C-n> :NERDTreeToggle<CR>

"Changing the split cursor movement bindings

	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l
"Tab movement
	"map <S-LEFT> gt
	map <S-left> :tabprevious<CR>
	map <S-right> :tabnext<CR>
