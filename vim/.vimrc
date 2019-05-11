call plug#begin('~/.vim/plugged')

" color themes
Plug 'lifepillar/vim-solarized8'
Plug 'kaicataldo/material.vim'
Plug 'ayu-theme/ayu-vim'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'Raimondi/delimitMate'
Plug 'tomtom/tcomment_vim'
Plug 'gabesoft/vim-ags'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" File finder like SublimeText
Plug 'ctrlpvim/ctrlp.vim'

" SublimeText multiple cursors
Plug 'terryma/vim-multiple-cursors'

" syntax checkers and styling
Plug 'scrooloose/syntastic'
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'
Plug 'slashmili/alchemist.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
call plug#end()

syntax enable " enable syntax processing
set guifont=Meslo\ LG\ L\ DZ\ for\ Powerline:h17
set guitablabel=%M%t
if has("gui_macvim")
  set invmmta                     " make Mac's Option key behave as the Meta key
endif

" material theme
set background=dark
let g:material_theme_style = 'palenight'
let g:material_terminal_italics = 1
colorscheme material

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"store lots of :cmdline history
set history=1000

set autoread autowrite          " reads modifications and writes without asking
set fileformats+=mac

"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

set nobackup                    " don't make backup files
set noswapfile                  " do not use swap files (brave mode on!)

set relativenumber number
set cursorline
set lazyredraw                  " redraw only when we need to
set showmatch                   " highlight matching [{()}]
set showcmd
set noshowmode
set laststatus=2
set showbreak=…
set nowrap
set linebreak                   " when wrapping, uses chars listed in breakt
set breakat=\ ^I!@*-+;:,./?     " when wrapping, break at these characters
set list
set listchars=tab:▻⋅,trail:⋅,nbsp:⋅
set visualbell t_vb=            "disable visual bell
set cursorline
set virtualedit=block           " allow moving past end of line in block selection mode
filetype indent on              " load filetype-specific indent files

" visual autocomplete for command menu
set wildmenu
set wildmode=full
set wildignore+=*.jpg,*.png,*.gif,*.avi,*.wmv,*.ogg,*.mp3,*.mov,*.zip,*.gz,*.bz,*.tar

set mouse=a ttymouse=xterm2

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

set splitbelow
set splitright
set noequalalways

set incsearch ignorecase smartcase
set hlsearch
set gdefault
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set nrformats-=octal nrformats+=alpha

"folding settings
set foldmethod=indent           " fold based on indent
set foldnestmax=3               " deepest fold is 3 levels
set foldlevelstart=99           " open folds by default

"switch to last used buffer. fucking useful!
nnoremap <leader>; :e#<CR>

"typos in command line
cabbrev W w
cabbrev Wq wq
cabbrev Q q

"easy indent
vmap > >gv
vmap < <gv

" highlight last inserted text
nnoremap gV `[v`]

" declutter all windows
nnoremap <leader>o <C-w>o

" strip all trailing whitespaces
nnoremap <leader>- :%s/\s\+$//<cr>:let @/=''<CR>

" nerdtree map
map <C-\> :NERDTreeToggle<CR>

" 2 spaces forever :)
set tabstop=2
set shiftwidth=2
set expandtab
set autoread

" Open ctrlp
set wildignore +=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore +=*/node_modules,*/deps

map <C-p> :CtrlP<CR>

let g:ctrlp_custom_ignore = '\v[\/](node_modules|bower_components|target|dist|coverage|_build)|(\.(swp|ico|git|svn))$'

