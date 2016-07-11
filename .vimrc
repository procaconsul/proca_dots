" VIMRC of Ivan Procaccini 2015
"   Dum differtur vita transcurrit

""""""""""""""""""""""""""""""""
" line count on the left

set number 
set textwidth=80

""""""""""""""""""""""""""""""""
" set tab preferences

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
" ---> remember <---
" set noexpandtab when working in Makefiles!!!

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
set paste 

" syntax and spell-check
syntax enable
set spelllang=it,en_gb

""""""""""""""""""""""""""""""""

filetype plugin indent on

" display configuration
set background=dark
set t_Co=256

" specific settings for solarized theme
"let g:solarized_termcolors=256
"let g:solarized_visibility="high"
"let g:solarized_contrast="high"
"let g:solarized_termtrans=1

colors default
hi CursorLine guifg=NONE guibg=NONE ctermbg=NONE gui=NONE term=NONE cterm=bold

""""""""""""""""""""""""""""""""

" using pathogen for plugins management
execute pathogen#infect()

"PLUGINS""""""""""""""""""""""""

" enable nerdTree
map <C-t> :NERDTreeToggle<CR>

" setup for JSON highlighting
au BufRead,BufNewFile *.json set filetype=json

