" VIMRC of Ivan Procaccini 2015
"   Dum differtur vita transcurrit

if &term =~ "ansi"
  let &t_ti = "\<Esc>[?47h"
  let &t_te = "\<Esc>[?47l"
endif

""""""""""""""""""""""""""""""""

" set hybrid between numbering 
" and relative numbering
set relativenumber 
set number 
" set textwidth=80

""""""""""""""""""""""""""""""""

" set tab preferences
autocmd FileType * set tabstop=2|set shiftwidth=2|set expandtab

" adapt indentation to filetype
filetype plugin indent on

" set noexpandtab when working w/ Makefiles
autocmd FileType make setlocal noexpandtab 

" scolling and pane selection in all modes
set mouse=a 
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

" scroll setting
set scrolloff=999

" syntax and spell-check
syntax enable
set spelllang=it,en_gb

""""""""""""""""""""""""""""""""

" display configuration
set background=dark
set t_Co=256

colo solarized
hi CursorLine guifg=NONE guibg=NONE ctermbg=NONE gui=NONE term=NONE cterm=bold

"FOLDING""""""""""""""""""""""""


set foldmethod=indent

" File unfolded when opened
set foldlevelstart=99

"PLUGINS""""""""""""""""""""""""

" using vim-plugin for plugins management
" Install all via :PlugInstall
" Update all via :PlugUpdate
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'ambv/black'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'tpope/vim-endwise'
Plug 'airblade/vim-gitgutter'
Plug 'vimwiki/vimwiki'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier', {'do': 'yarn install'}

" Initialize plugin system
call plug#end()

" vim-airline (Status bar)
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1

"""""""""""""""""""""""""""""""""
" REMAPPINGS

" Toggle fold
nnoremap <Space> za

" Toggle nerdTree
noremap <C-t> :NERDTreeToggle<CR>

" Toggle fuzzy finder 
noremap <C-g> :FZF<CR>

" Uppercase word
nnoremap <leader>u gUiw

" Remove highlighting 
nnoremap <CR> :noh<CR> 

"""""""""""""""""""""""""""""""""
"SYNTAX HIGHLIGHTING

" setup for JSON highlighting
au BufRead,BufNewFile *.json set filetype=json

" setup for logic programming highlighting (using prolog highlight)
au BufRead,BufNewFile *.lp,*.las set filetype=prolog

" enable filetype differentiation for plugins
filetype plugin on

" call black on save (only .py files)
autocmd BufWritePre *.py execute ':Black'

" call Prettier on save (relevant files)
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html execute ':Prettier'

