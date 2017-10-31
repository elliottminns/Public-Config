set ruler
set termguicolors
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set backspace=2
set autoindent
set smartindent
set number
set background=dark
syntax on
syntax enable
set colorcolumn=80
set mouse=a

autocmd Filetype javascript match Error /\s\+$/
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype json setlocal ts=2 sts=2 sw=2
autocmd Filetype vue setlocal ts=2 sts=2 sw=2

hi clear
if exists("syntax_on")
  syntax reset
endif

"dein Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.config/nvim/dein/repos/github.com/Shougo/dein.vim
set runtimepath+=/Users/elliott/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.config/nvim/dein')
    call dein#begin('$HOME/.config/nvim/dein')

    " Let dein manage dein
    " Required:
    call dein#add('Shougo/dein.vim')

    " Add or remove your plugins here:
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')
    call dein#add('dracula/vim')
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')
    call dein#add('scrooloose/nerdtree')
    call dein#add('jistr/vim-nerdtree-tabs')
    call dein#add('gavocanov/vim-js-indent')
    call dein#add('jacoborus/tender.vim')
    call dein#add('othree/yajs.vim')
    call dein#add('mustache/vim-mustache-handlebars')
    call dein#add('posva/vim-vue')
    call dein#add('mhartington/oceanic-next', {'script_type': 'colors' })
    call dein#add('ajh17/spacegray.vim')
    call dein#add('neovimhaskell/haskell-vim')

    " You can specify revision/branch/tag.
    call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

    " Required:
    call dein#end()
    call dein#save_state()
endif
"
" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif

" call deoplete#enable()

"End dein Scripts-------------------------

colorscheme dracula

map <Leader>n <plug>NERDTreeTabsToggle<CR>

let g:airline_powerline_fonts = 1
let g:airline_theme = 'vice'
let g:ctrlp_custom_ignore = '\v[\/]\.(DS_Store|git|hg|svn|optimized|compiled|node_modules|build|coverage)$'
"let g:airline#extensions#tabline#enabled = 1

let g:terminal_color_0  = '#2e3436'
let g:terminal_color_1  = '#cc0000'
let g:terminal_color_2  = '#4e9a06'
let g:terminal_color_3  = '#c4a000'
let g:terminal_color_4  = '#3465a4'
let g:terminal_color_5  = '#75507b'
let g:terminal_color_6  = '#0b939b'
let g:terminal_color_7  = '#d3d7cf'
let g:terminal_color_8  = '#555753'
let g:terminal_color_9  = '#ef2929'
let g:terminal_color_10 = '#8ae234'
let g:terminal_color_11 = '#fce94f'
let g:terminal_color_12 = '#729fcf'
let g:terminal_color_13 = '#ad7fa8'
let g:terminal_color_14 = '#00f5e9'
let g:terminal_color_15 = '#eeeeec'
