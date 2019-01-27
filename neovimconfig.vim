set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.config/xdg/nvim/bundle/Vundle.vim
source $HOME/.config/xdg/nvim/bundle/autopep.vim
call vundle#begin('$HOME/.config/xdg/nvim/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" ==== helpers
Plugin 'vim-scripts/L9'

" ==== File tree
Plugin 'scrooloose/nerdtree'


Plugin 'vim-airline/vim-airline'
Plugin 'terryma/vim-expand-region'
Plugin 'flazz/vim-colorschemes'
Plugin 'valloric/youcompleteme'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive' "Git wrapper
Plugin 'tpope/vim-commentary' "Comment lines easily
Plugin 'vim-airline/vim-airline-themes'
Plugin 'raimondi/delimitmate' "Domykanie nawiasow
Plugin 'vim-syntastic/syntastic'
"Plugin 'rust-lang/rust.vim'
Plugin 'mileszs/ack.vim'
"Plugin 'w0rp/ale'
Plugin 'farmergreg/vim-lastplace' "Open files at last open position
" Plugin 'rhysd/clever-f.vim'
Plugin 'mhartington/oceanic-next'
Plugin 'othree/yajs.vim' "JS syntax
Plugin 'othree/html5.vim' "html5 supoport
Plugin 'HerringtonDarkholme/yats.vim' "typescript checker
Plugin 'yuttie/comfortable-motion.vim' "Comfortable scrolling
Plugin 'lilydjwg/colorizer' "show rgb's colors
Plugin 'prettier/vim-prettier' "style js
Plugin 'airblade/vim-gitgutter' "git diff files
Plugin 'Yggdroot/indentLine'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'uguu-org/vim-matrix-screensaver'
Plugin 'mattn/flappyvird-vim'
Plugin 'posva/vim-vue'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'rip-rip/clang_complete'
" highlight OverLength ctermbg=red ctermfg=white guibg=#f92929
" match OverLength /\%80v.\+/


call vundle#end()
filetype plugin indent on
" let g:airline_theme='bubblegum'
set shiftwidth=4
set tabstop=2
set autoindent
set smartindent
map <C-t> :NERDTreeToggle<CR>
map <C-w> :lclose<CR>

set background=dark
syntax on
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
set autochdir
set number
set encoding=utf-8
set hidden


"easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"switch tabs
map <C-]> :bp <CR>
map <C-\> :bn <CR>
map <C-s> :w <CR>
nnoremap <C-x> :bd <CR>
let g:ycm_key_list_stop_completion = ["<C-m>"]
let g:ycm_global_ycm_extra_conf = '~/.config/xdg/nvim/bundle/youcompleteme/.ycm_extra_conf.py'
:set scrolloff=10
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o,*.d 

highlight clear CursorLine
highlight CursorLineNR ctermbg=67
highlight Cursor ctermbg=67
augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set mouse=a

if (has("termguicolors"))
 set termguicolors
endif

" Theme
"syntax enable
colorscheme solarized

let g:airline_theme = 'oceanicnext'

" " Copy to clipboard
vnoremap  Qy  "+y
nnoremap  QY  "+yg_
nnoremap  Qy  "+y
nnoremap  Qyy  "+yy

" " Paste from clipboard
nnoremap Qp "+p
nnoremap QP "+P
vnoremap Qp "+p
vnoremap QP "+P
set splitbelow
set splitright

let g:comfortable_motion_no_default_key_mappings = 1

nnoremap <silent> <C-d> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-100)<CR>

noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>
hi NonText guifg=bg

nnoremap <C-A-h> <C-w><char-60>
nnoremap <C-A-l> <C-w><char-62>

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue Prettier

let g:NERDTreeWinSize=25

let g:prettier#config#tab_width = 4

let g:prettier#config#use_tabs = 'true'

let g:prettier#config#single_quote = 'true'

let g:ctrlp_custom_ignore = 'node_modules'

let g:airline#extensions#tabline#enabled = 1
  
let g:airline_detect_spelllang=1

let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:syntastic_python_pylint_args='--rcfile=/home/redy/.pylintrc' 

let g:vue_disable_pre_processors=1

let g:syntastic_cpp_checkers = ['gcc']


set clipboard+=unnamedplus

hi LineTooLong ctermbg=red ctermfg=white guibg=#f92929

" match LineTooLong /\%>99v.\+/
