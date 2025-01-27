" Basic syntax and number highlighting
syntax on
set number

" Vim-Plug list
call plug#begin()

Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'christoomey/vim-tmux-navigator'
Plug 'itchyny/lightline.vim'

call plug#end()

" Colorscheme and other settings
set background=dark
set termguicolors
colorscheme github
let g:airline_theme='badwolf'
set nowrap
set tabstop=4
set shiftwidth=4
nnoremap <C-b> :NERDTreeToggle<CR>
let mapleader = " "
set laststatus=2
set mouse=a

" Map auto-completion for insert mode
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap < <><left>
inoremap " ""<left>

" Map keys to open splits
map <leader>sx :close<CR>
map <leader>sv <C-w>v
map <leader>sh <C-w>s
map <leader>se <C-w>=

" Map keys to increase or decrease numbers
map <leader>+ <C-a>
map <leader>- <C-x>

" Map keys to open tabs
map <leader>to :tabnew<CR>
map <leader>tx :tabclose<CR>
map <leader>tn :tabn<CR>
map <leader>tp :tabp<CR>

" Map save and quit
map <leader>q :x<CR>
map <leader>s :w<CR>

" Map arow keys to move around splits
map <C-w><left> <C-w>h
map <C-w><down> <C-w>j
map <C-w><up> <C-w>k
map <C-w><right> <C-w>l

" Map jj to press escape
imap jj <Esc>

" Map arrow keys to nop
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
" Indentation settings
set smartindent
set autoindent

if !has('gui_running')
  set t_Co=256
endif

" Function to toggle text wrap with linebreak for whole words
function! ToggleWrap()
  if &wrap
    set nowrap
  else
    set wrap
    set linebreak
  endif
endfunction

" Map Ctrl-W to toggle text wrap
nnoremap <C-w> :call ToggleWrap()<CR>
