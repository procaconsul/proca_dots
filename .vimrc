" VIMRC of Ivan Procaccini 2015
"   Dum differtur vita transcurrit

""""""""""""""""""""""""""""""""

" set hybrid between numbering 
" and relative numbering
set relativenumber 
set number 
set textwidth=80

""""""""""""""""""""""""""""""""

" set tab preferences
set smartindent
set expandtab
set shiftwidth=2
set tabstop=2

" adapt indentation to filetype
filetype plugin indent on

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

" enable use of mouse
" set mouse=a

" syntax and spell-check
syntax enable
set spelllang=it,en_gb

""""""""""""""""""""""""""""""""

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

" NerdCommenter
" add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" enable nerdTree
map <C-t> :NERDTreeToggle<CR>

" setup for JSON highlighting
au BufRead,BufNewFile *.json set filetype=json

" enable filetype differentiation for plugins
filetype plugin on

