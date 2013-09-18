" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible


filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'kchmck/vim-coffee-script'
Bundle "scrooloose/syntastic"
"Bundle 'wincent/Command-T'
"Bundle 'tpope/vim-surround'
"Bundle 'tpope/vim-fugitive'
"Bundle 'majutsushi/tagbar'
"Bundle 'davidhalter/jedi-vim'
Bundle 'scrooloose/nerdtree'
"Bundle 'klen/python-mode'
"Bundle 'msanders/snipmate.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'christoomey/vim-tmux-navigator'
"Bundle 'marijnh/tern_for_vim'
Bundle 'scrooloose/nerdcommenter'
"Bundle 'web-indent'
"Bundle 'git://git.wincent.com/command-t.git'
"Bundle 'ervandew/supertab'

filetype plugin indent on     " required!

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
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
set backupdir=/tmp
set directory=/tmp " Don't clutter my dirs up with swp and tmp files
"set gdefault " assume the /g flag on :s substitutions to replace all matches in a line

"set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
syntax on
set hlsearch


" Disable Ex mode
map Q <Nop>

" Disable K looking stuff up
map K <Nop>
" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Switch to alternate file
map <ESC>[27;5;9~ :bnext<cr>
map <ESC>[27;6;9~ :bprevious<cr>
"map <C-Tab> :bnext<cr>
"map <C-S-Tab> :bprevious<cr>

map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>
map <C-q> <esc>:q<CR>
imap <C-q> <esc>:q<CR>
map :Q :q<CR>
map <F9> :NERDTreeToggle<CR>


let NERDTreeMapActivateNode='l'
let NERDTreeMapCloseDir='h'
let NERDTreeMapToggleHidden='zh'
"let NERDTreeMapJumpParent='h'

set t_Co=256
"set term=xterm-256color
if $TERM == 'linux'
	set term=fbterm
endif
colorscheme wombat256i



" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

