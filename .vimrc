" Plugins
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'elmcast/elm-vim'
Plug 'scrooloose/nerdtree'
Plug 'jszakmeister/vim-togglecursor'
Plug 'vim-ruby/vim-ruby'
call plug#end()

" General
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
set fillchars+=vert:\ 
let mapleader="\\"
set number
set ignorecase
set noswapfile
set completeopt=longest,menuone

" Disable annoying beeping
set noerrorbells
set vb t_vb=

" Font
set guifont=Inconsolata\ for\ Powerline:h14

" Theme
"set background=dark
colorscheme gruvbox
highlight Comment gui=NONE

" Airline
let g:airline_powerline_fonts = 1
" Airline theme
let g:airline_theme='gruvbox'

" NerdTree
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 24
let g:NERDTreeMinimalUI = 1
"autocmd VimEnter * if (0 == argc()) | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:airline#extensions#syntastic#enabled = 0

" Elm
let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1
let g:elm_syntastic_show_warnings = 1

" Markdown
"autocmd BufNewFile,BufRead *.md set spell | set lbr | set nonu
let g:markdown_fenced_languages = ['html', 'json', 'css', 'javascript', 'elm', 'vim']
