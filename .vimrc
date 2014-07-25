filetype on  " Automatically detect file types.
set nocompatible  " no vi compatibility.

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim' " Vundle

" Plugins
Plugin 'nathanaelkane/vim-indent-guides' " vim indent guides
Plugin 'scrooloose/syntastic' " syntax checker
Plugin 'bling/vim-airline' " airplanes go zoom
Plugin 'tpope/vim-fugitive' " git wrapper
Plugin 'bling/vim-bufferline' " list buffers in command bar
Plugin 'tpope/vim-surround' " surroundings
Plugin 'AndrewRadev/splitjoin.vim' " splitjoin
Plugin 'scrooloose/nerdtree' " file navigator

call vundle#end()
filetype plugin indent on

" Add recently accessed projects menu (project plugin)
set viminfo^=\!

" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Airline Settings
let g:airline_theme='luna'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.branch = '⎇'


syntax enable
set cf  " Enable error files & error jumping.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set wrap  " Line wrapping on
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
set paste " Enable paste from clipboard

" Formatting
set ts=4  " Tabs are 4 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=4  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab

" Visual
set encoding=utf-8
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
set t_Co=16
set background=dark
colorscheme solarized

" set vim indent guides plugin settings
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=DarkGrey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=DarkGrey
let g:indent_guides_start_level = 2 " vim indent guides size
let g:indent_guides_guide_size = 1 " vim indent guides size
let g:indent_guides_enable_on_vim_startup = 1


" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modesc
