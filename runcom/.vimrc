" VIMRC of Ivan Procaccini 2015
"   Dum differtur vita transcurrit

""""""""""""""""""""""""""""""""

" set hybrid between numbering 
" and relative numbering
set relativenumber 
set number 
set textwidth=80

""""""""""""""""""""""""""""""""

" adapt indentation to filetype
filetype plugin indent on

" set tab preferences
autocmd FileType * set tabstop=2|set shiftwidth=2|set expandtab

" set noexpandtab when working w/ Makefiles
autocmd FileType make setlocal noexpandtab 

set backspace=2

""""""""""""""""""""""""""""""""

" status bar
set laststatus=2
set ruler
set showcmd

"""""""""""""""""""""""""""""""" 

" search text 
set hlsearch
set ignorecase
set smartcase

" paste with ^V without fucked up indentation
" set paste 

" enable use of mouse
" set mouse+=a

" scroll setting
set scrolloff=999

" syntax and spell-check
syntax enable
set spelllang=it,en_gb

""""""""""""""""""""""""""""""""

" display configuration
set background=dark
set t_Co=256

colors default
hi CursorLine guifg=NONE guibg=NONE ctermbg=NONE gui=NONE term=NONE cterm=bold

"FOLDING""""""""""""""""""""""""

" Toggle fold
nnoremap <Space> za

set foldmethod=indent

" File unfolded when opened
set foldlevelstart=99

"PLUGINS""""""""""""""""""""""""

" using vim-plugin for plugins management
" Install all via :PlugInstall
" Update all via :PlugUpdate
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'tpope/vim-endwise'
Plug 'airblade/vim-gitgutter'
Plug 'tomlion/vim-solidity'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Initialize plugin system
call plug#end()

" vim-airline (Status bar)
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1

" vim-syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_mode_map = { 'mode': 'passive' }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NerdCommenter
" add spaces after comment delimiters by default
" <map leader> = \. Can change it with following:
" let mapleader=<whatever you want>
let g:NERDSpaceDelims = 1

" Unset the last search pattern register by hitting return
nnoremap <CR> :noh<CR><CR>

" enable nerdTree
noremap <C-t> :NERDTreeToggle<CR>

" fuzzy finder toggle
noremap <C-g> :FZF<CR>

" syntastic toggle
nnoremap <C-w>E :SyntasticToggleMode<CR> :SyntasticCheck<CR> 
nnoremap <C-w>D :SyntasticToggleMode<CR>  

" setup for JSON highlighting
au BufRead,BufNewFile *.json set filetype=json

" enable filetype differentiation for plugins
filetype plugin on

