" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

"set nowritebackup              " dangerous
set backup
set swapfile
"set backupcopy=yes
set backupdir=/tmp
set directory=/tmp " Don't clutter my dirs up with swp and tmp files

set exrc "allows for per-project configuration files
set secure "disable unsafe commands in your project-specific .vimrc files

filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'kchmck/vim-coffee-script'
"Plugin 'digitaltoad/vim-jade'
"Plugin 'nikvdp/ejs-syntax'

Plugin 'elmcast/elm-vim'
"Plugin 'lambdatoast/elm.vim'

Plugin 'leafgarland/typescript-vim'

"Plugin 'dart-lang/dart-vim-plugin'
"Plugin 'mtscout6/vim-cjsx'
Plugin 'jvirtanen/vim-octave'

"Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
"Plugin 'vim-scripts/paredit.vim'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
"Plugin 'guns/vim-sexp'
"Plugin 'tpope/vim-classpath'
"Plugin 'kien/rainbow_parentheses.vim'
"Plugin 'wincent/command-t'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'jayferd/eco.vim'
"Plugin 'briancollins/vim-jst' 
"Plugin 'pangloss/vim-javascript'
"Plugin 'KabbAmine/vCoolor.vim'

"Plugin 'mustache/vim-mustache-handlebars'
Plugin 'tpope/vim-abolish'

"Plugin '/home/raoof/projects/dream-vim/.git'

Plugin 'jdonaldson/vaxe'

Plugin 'tikhomirov/vim-glsl'

"Plugin 'flazz/vim-colorschemes'
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-colorscheme-switcher'
"Plugin 'felixhummel/setcolors.vim'

Plugin 'derekwyatt/vim-sbt'
Plugin 'derekwyatt/vim-scala'
"Plugin 'ensime/ensime-vim'

Plugin 'chriskempson/vim-tomorrow-theme'

Plugin 'eagletmt/neco-ghc'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
"Plugin 'eagletmt/ghcmod-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Twinside/vim-hoogle'
"Plugin 'eagletmt/ghcmod-vim'
"Plugin 'Shougo/vimproc.vim'
Plugin 'bitc/vim-hdevtools'

"Plugin 'Shougo/neocomplete.vim'

Plugin 'raichoo/purescript-vim'

"Plugin 'dsolstad/vim-wombat256i'

"Plugin '/home/raoof/projects/colon.vim/.git'
"Plugin 'jpalardy/vim-slime'

Plugin 'davidhalter/jedi-vim'

Plugin 'JBakamovic/yavide'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on     " required!

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"if has("vms")
"  set nobackup		" do not keep a backup file, use versions instead
"else
"  set backup		" keep a backup file
"endif
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


" Disable Ex mode
map Q <Nop>

" Disable K looking stuff up
map K <Nop>
" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Map ctrl-movement keys to window switching
map <C-k> <esc>:wincmd k<CR>
map <C-j> <esc>:wincmd j<CR>
map <C-l> <esc>:wincmd l<CR>
map <C-h> <esc>:wincmd h<CR>

" Switch to alternate file
map <ESC>[27;5;9~ :bnext<cr>
map <ESC>[27;6;9~ :bprevious<cr>
"map <C-Tab> :bnext<cr>
"map <C-S-Tab> :bprevious<cr>

map <C-w> <esc>:bd<CR>
imap <C-w> <esc>:bd<CR>
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>
map <C-q> <esc>:q<CR>
imap <C-q> <esc>:q<CR>
"map :Q :q<CR>
map <F9> :Explore<CR>

let mapleader = ","

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
"set wildmode=list:longest,list:full
"set complete=.,w,t
"function! InsertTabWrapper()
"    let col = col('.') - 1
"    if !col || getline('.')[col - 1] !~ '\k'
"        return "\<tab>"
"    else
"        return "\<c-p>"
"    endif
"endfunction
"inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
"
"let NERDTreeMapActivateNode='l'
"let NERDTreeMapCloseDir='h'
"let NERDTreeMapToggleHidden='zh'
"let NERDTreeMapJumpParent='h'
"
"let g:airline_powerline_fonts = 1

set t_Co=256
"set term=xterm-256color
if $TERM == 'linux'
	set term=fbterm
endif
"colorscheme wombat256i
colorscheme Tomorrow-Night-Bright
set mouse=a


" coffeescript
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
"autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
"autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent
"map <F5> :CoffeeRun<CR>
"map <F6> :CoffeeWatch<CR>
autocmd FileType coffee map <buffer> <F5> :CoffeeRun<CR>
autocmd FileType coffee map <buffer> <F6> :CoffeeWatch<CR>

" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"autocmd BufWritePost,FileWritePost *.coffee :silent !coffee -b -c <afile>


set nohlsearch

"let g:syntastic_coffee_coffeelint_args = "--csv --file package.json"
let g:syntastic_coffee_coffeelint_args = "--csv --file /home/raoof/.coffeescript/coffeelint.json"
let g:syntastic_python_python_exec = '/usr/bin/python3'
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

let g:elm_syntastic_show_warnings = 1
"let g:elm_format_autosave = 1

" syntax highlighting for ejs
au BufNewFile,BufRead *.ejs set filetype=html

" haskell neco-ghc plugin config
"-------------------------------------------------------

" http://www.stephendiehl.com/posts/vim_2016.html
"-------------------------------------------------------
map ,s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

if has("gui_running")
  imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
else " no gui
  if has("unix")
    inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
  endif
endif

let g:haskellmode_completion_ghc = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

let g:haskell_tabular = 1

vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

map <c-o> :CtrlP<CR>
noremap ,b<space> :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = '\v[\/]((\.(git|stack-work))|node_modules)$'
"-------------------------------------------------------

" make c-q to work
silent !stty -ixon > /dev/null 2>/dev/null

" hoogle
"au BufNewFile,BufRead *.hs map <buffer> <F1> :Hoogle 
"au BufNewFile,BufRead *.hs map <buffer> <S-F1> :HoogleLine<CR>
"au BufNewFile,BufRead *.hs map <buffer> <C-F1> :HoogleClose<CR>
"au FileType haskell map <buffer> <F1> :Hoogle<CR>
"au FileType haskell map <buffer> <S-F1> :HoogleLine<CR>

" tags for haskell and elm
set tags=tags;/,codex.tags;/

" elm
"let g:syntastic_auto_loc_list = 1
let g:elm_syntastic_show_warnings = 1
au FileType elm map <buffer> <F1> :ElmShowDocs<CR>

"au FileType haskell map <buffer> <c-]> :exe "tag ".expand('<cWORD>')<CR>
au FileType haskell setlocal equalprg=hindent
map <c-s-f> gg=G''

au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>

" not working as I expected, override other filetypes
au FileType clojure nmap <CR> cpp
au FileType clojure nmap <C-]> ]<C-d>


" python
let g:jedi#goto_definitions_command = "<C-]>"

au BufNewFile,BufRead *.boot set filetype=clojure
