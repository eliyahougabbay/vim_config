syntax on
set clipboard=unnamed
let mapleader = ","

set backspace=indent,eol,start
" Mapping to reload configuration"
nmap <leader>so :source $HOME\_vimrc<CR>

inoremap jj <Esc>


if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h9:cANSI
    set guioptions-=m  "menu bar
    set guioptions-=T  "toolbar
    set guioptions-=r  "scrollbar
    map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
    set number
    set relativenumber
  endif
endif

set pythonthreehome=C:\Users\PC:\Users\Eliyahou\AppData\Local\Programs\Python\Python37
set pythonthreedll=C:\Users\PC:\Users\Eliyahou\AppData\Local\Programs\Python\Python37\python37.dll

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Colorstatus bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Indent python
Plug 'vim-scripts/indentpython.vim'

" python Autocompletion
Plug 'davidhalter/jedi-vim'

" Colorscheme
Plug 'chriskempson/base16-vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'


" Initialize plugin system
call plug#end()

set t_Co=256
set cursorline
colorscheme onehalflight
" let g:airline_theme='onehalfligtht'

