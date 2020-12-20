" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

"set nowritebackup              " dangerous
set backupcopy=yes
"set backup
"set swapfile
set backupdir=/tmp
set directory=/tmp " Don't clutter my dirs up with swp and tmp files

"set noswapfile
"set nobackup
"set nowb

"set backup     " Enable backup files
"set swapfile   " Use a swap file in current buffer
"set nowb       " Write backup before saving

set exrc "allows for per-project configuration files
set secure "disable unsafe commands in your project-specific .vimrc files

set visualbell t_vb=
let g:netrw_banner = 0
set arabicshape!

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
"set clipboard=unnamed
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
map K <nop>

" Disable K looking stuff up
"map K <Nop>
" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Map ctrl-movement keys to window switching
map <C-k> <esc>:wincmd k<CR>
map <C-j> <esc>:wincmd j<CR>
map <C-l> <esc>:wincmd l<CR>
map <C-h> <esc>:wincmd h<CR>

" i3 integration
"nnoremap <silent> <c-l> :call Focus('right', 'l')<CR>
"nnoremap <silent> <c-h> :call Focus('left', 'h')<CR>
"nnoremap <silent> <c-k> :call Focus('up', 'k')<CR>
"nnoremap <silent> <c-j> :call Focus('down', 'j')<CR>

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

  "set <F15>="\e[I"
  "set <F16>="\e[O"
  "nnoremap <F15> :echo 'hello'
  "nnoremap <F16> :echo 'hello'
endif

map <C-w> <esc>:bd<CR>
imap <C-w> <esc>:bd<CR>
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>
map <C-q> <esc>:q<CR>
imap <C-q> <esc>:q<CR>
"map :Q :q<CR>

if !exists("raoof_debugger")
map <F9> :Explore<CR>
endif

let mapleader = ","

set t_Co=256
"set term=xterm-256color
"set term=rxvt
"set term=rxvt-color
if $TERM == 'linux'
	set term=fbterm
endif
"colorscheme wombat256i
colorscheme Tomorrow-Night-Bright
set mouse=a
set mousefocus
set nohlsearch

set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" make c-q to work
silent !stty -ixon > /dev/null 2>/dev/null

if has("nvim")
  set laststatus=0
endif
tnoremap <Esc> <C-\><C-n>

if has('win32')
  set guifont=Consolas:h14:cANSI:qDRAFT
  if !has('gui_running')
    colorscheme pablo
  endif
else
  set guifont=DejaVu\ Sans\ Mono\ 11
endif

hi StatusLine ctermbg=255 ctermfg=8 guibg=#ffffff guifg=#333333
hi StatusLineNC ctermbg=255 ctermfg=0 guibg=#ffffff guifg=#000000
hi VertSplit ctermbg=0 ctermfg=8 guibg=#000000 guifg=#333333

au BufNewFile,BufRead *.fasm set filetype=fasm
au BufNewFile,BufRead *.dream set filetype=c
au BufNewFile,BufRead *.nasm set filetype=nasm
au BufNewFile,BufRead *.gas set filetype=fasm
au BufNewFile,BufRead *.cee set filetype=clojure


"set completeopt=longest,menuone,preview
set completeopt=menuone

set signcolumn=yes

set splitbelow

if !has('nvim')
  "noremap  <silent> <F5> :up<cr>:silent call system('xterm-send bash ' . expand('%:p') . ' build &') <cr>
  "inoremap <silent> <F5> <esc>:up<cr>:silent call system('xterm-send bash ' . expand('%:p') . ' build &') <cr>
  "noremap  <silent> <S-F5> :up<cr>:silent call system('xterm-send bash ' . expand('%:p') . ' debug_build &') <cr>
  "inoremap <silent> <S-F5> <esc>:up<cr>:silent call system('xterm-send bash ' . expand('%:p') . ' debug_build &') <cr>
  "noremap  <silent> <F6> :up<cr>:silent call system('xterm-send bash ' . expand('%:p') . ' engine_build &') <cr>
  "inoremap <silent> <F6> <esc>:up<cr>:silent call system('xterm-send bash ' . expand('%:p') . ' engine_build &') <cr>
  "noremap  <silent> <S-F6> :up<cr>:silent call system('xterm-send bash ' . expand('%:p') . ' engine_debug_build &') <cr>
  "inoremap <silent> <S-F6> <esc>:up<cr>:silent call system('xterm-send bash ' . expand('%:p') . ' engine_debug_build &') <cr>

  noremap  <silent> <F5> :up<cr>:silent call system('bash ' . expand('%:p') . ' xterm-send build &') <cr>
  inoremap <silent> <F5> <esc>:up<cr>:silent call system('bash ' . expand('%:p') . ' xterm-send build &') <cr>
  noremap  <silent> <S-F5> :up<cr>:silent call system('bash ' . expand('%:p') . ' xterm-send debug_build &') <cr>
  inoremap <silent> <S-F5> <esc>:up<cr>:silent call system('bash ' . expand('%:p') . ' xterm-send debug_build &') <cr>
  noremap  <silent> <F6> :up<cr>:silent call system('bash ' . expand('%:p') . ' xterm-send engine_build &') <cr>
  inoremap <silent> <F6> <esc>:up<cr>:silent call system('bash ' . expand('%:p') . ' xterm-send engine_build &') <cr>
  noremap  <silent> <S-F6> :up<cr>:silent call system('bash ' . expand('%:p') . ' xterm-send engine_debug_build &') <cr>
  inoremap <silent> <S-F6> <esc>:up<cr>:silent call system('bash ' . expand('%:p') . ' xterm-send engine_debug_build &') <cr>
endif

set laststatus=0
set statusline=
"set statusline+=%#PmenuSel#
"set statusline+=%#CursorColumn#
set statusline+=%#LineNr#
set statusline+=%=
"set statusline+=%{StatuslineGit()}
"set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m
"set statusline+=%=
"set statusline+=%#CursorColumn#
"set statusline+=\ %y
"set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
"set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

set rulerformat=%50(%=%f\ %m\ %p%%\ %l:%c%)

set ghr=0

"change cursor shape
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"


" for omnisharp-vim using vim8 package manager
filetype indent plugin on
syntax enable
"let g:OmniSharp_server_path = '/opt/omnisharp-v1.37.5/run'
let g:OmniSharp_server_path = '/opt/omnisharp-v1.37.5/omnisharp/OmniSharp.exe'
let g:OmniSharp_server_use_mono = 1

let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}

imap <c-space> <Plug>(asyncomplete_force_refresh)

"let g:asyncomplete_auto_popup = 0

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ asyncomplete#force_refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" allow modifying the completeopt variable, or it will
" be overridden all the time
let g:asyncomplete_auto_completeopt = 0

set completeopt=menuone,noinsert,noselect,preview

"To auto close preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
