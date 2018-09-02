" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

set backupcopy=yes
set backupdir=/tmp
set directory=/tmp " Don't clutter my dirs up with swp and tmp files

set exrc "allows for per-project configuration files
set secure "disable unsafe commands in your project-specific .vimrc files

set visualbell t_vb=
let g:netrw_banner = 0
set arabicshape!

call plug#begin('~/.vim/bundle')

Plug 'ap/vim-buftabline'
Plug 'tikhomirov/vim-glsl'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' }
Plug 'Chiel92/vim-autoformat'
Plug 'skywind3000/asyncrun.vim'

call plug#end()

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=500		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set ignorecase
set smartcase
set number
set nowrap
set clipboard=unnamedplus
set hidden
set autoindent		" always set autoindenting on
"set gdefault " assume the /g flag on :s substitutions to replace all matches in a line

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
syntax on
set hlsearch

set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar
set guicursor+=a:blinkon0

" Disable Ex mode
map Q <Nop>

" Map ctrl-movement keys to window switching
map <C-k> <esc>:wincmd k<CR>
map <C-j> <esc>:wincmd j<CR>
map <C-l> <esc>:wincmd l<CR>
map <C-h> <esc>:wincmd h<CR>

" Switch to alternate file
if has("nvim") || has('gui_running')
  map <C-Tab> :bnext<cr>
  map <C-S-Tab> :bprevious<cr>
else
  "map <ESC>[27;5;9~ :bnext<cr>
  "map <ESC>[27;6;9~ :bprevious<cr>
  set timeout timeoutlen=1000 ttimeoutlen=100
  set <F13>=[27;5;9~
  set <F14>=[27;6;9~
  nnoremap <F13> :bnext<cr>
  nnoremap <F14> :bprevious<cr>
endif

map <C-w> <esc>:bd<CR>
imap <C-w> <esc>:bd<CR>
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>
map <C-q> <esc>:q<CR>
imap <C-q> <esc>:q<CR>
map <F9> :Explore<CR>
noremap <F3> :Autoformat<CR>
noremap <F12> :vert botright copen 100<CR>

let mapleader = ","

set t_Co=256
if $TERM == 'linux'
	set term=fbterm
endif

colorscheme Tomorrow-Night-Bright
set mouse=a
set nohlsearch

set statusline+=%#warningmsg#
set statusline+=%*

" make c-q to work
silent !stty -ixon > /dev/null 2>/dev/null

hi BufTabLineHidden ctermbg=Black ctermfg=White 
hi BufTabLineFill ctermbg=Black
hi BufTabLineCurrent ctermbg=white ctermfg=black
let g:buftabline_indicators=1

if has("nvim")
  set laststatus=0
  tnoremap <Esc> <C-\><C-n>
endif

if has('win32')
  set guifont=Consolas:h14:cANSI:qDRAFT
  if !has('gui_running')
    colorscheme pablo
  endif
else
  set guifont=DejaVu\ Sans\ Mono\ 11
endif

hi StatusLine ctermbg=white ctermfg=233
hi StatusLineNC ctermbg=white ctermfg=black
hi VertSplit ctermbg=234 ctermfg=234

let g:ycm_global_ycm_extra_conf = "~/projects/dotfiles/ycm_extra_conf.py"
au FileType cpp noremap  <F5> :up <cr> :AsyncRun ./scripts/debug <cr>

set splitbelow
