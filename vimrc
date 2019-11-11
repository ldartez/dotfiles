set encoding=utf-8
set ruler
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
"set smarttab
set cursorline
set cursorcolumn
set number
"set tabstop=4
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set nobackup
set noswapfile
set foldmethod=indent
set foldlevel=1
set foldclose=""
set scrolloff=1
filetype plugin indent on
if &t_Co >= 256 || has("gui_running")
    color desert
endif

if &t_Co > 2 || has("gui_running")
    " switch syntax highlighting on, when the terminal has colors
    syntax on
endif
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdcommenter'
" Nerd commenting
Plugin 'scrooloose/nerdtree'
" All of your Plugins must be added before the following line
" quoting and parenthesizing made easy 
Plugin 'tpope/vim-surround'
" Easy motion 
" This is really cool 
Plugin 'easymotion/vim-easymotion'
" Color scheme
" Can't help it if you're asthetic af
Plugin 'flazz/vim-colorschemes'
" Shows indentation
Plugin 'yggdroot/indentline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'lervag/vimtex'
Plugin 'airblade/vim-gitgutter'
Plugin 'webdevel/tabulous'
Plugin 'xuhdev/vim-latex-live-preview'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
Plugin 'valloric/youcompleteme'

" vim nerdcommenting
let mapleader=","
" vim easy motion 
map n <Plug>(easymotion-prefix)
" nerd tree mapping
map <C-k> :NERDTreeToggle<CR>

"" colortheme
"colorscheme molokai
" defaults "
let g:ycm_autoclose_preview_window_after_completion = 0
let g:vimtex_quickfix_autoclose_after_keystrokes = 1

" vim-latex-live-preview settings
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a Preview'

