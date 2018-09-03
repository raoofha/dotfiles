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


call plug#begin('~/.vim/bundle')
"Plug 'bling/vim-airline'
"Plug 'scrooloose/syntastic'
Plug 'kchmck/vim-coffee-script'
"Plugin 'digitaltoad/vim-jade'
"Plugin 'nikvdp/ejs-syntax'

Plug 'elmcast/elm-vim'
"Plugin 'lambdatoast/elm.vim'

Plug 'leafgarland/typescript-vim'

"Plugin 'dart-lang/dart-vim-plugin'
"Plugin 'mtscout6/vim-cjsx'
Plug 'jvirtanen/vim-octave'

"Plugin 'guns/vim-clojure-static'

Plug 'tpope/vim-fireplace'
"Plug 'jebberjeb/clojure-socketrepl.nvim'
"Plug '~/projects/replwrap'
"Plug '~/.vim/bundle/replwrap'

"Plugin 'vim-scripts/paredit.vim'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
"Plugin 'guns/vim-sexp'
"Plugin 'tpope/vim-classpath'
"Plugin 'kien/rainbow_parentheses.vim'
"Plugin 'wincent/command-t'
Plug 'scrooloose/nerdcommenter'
"Plugin 'jayferd/eco.vim'
"Plugin 'briancollins/vim-jst' 
"Plugin 'pangloss/vim-javascript'
"Plugin 'KabbAmine/vCoolor.vim'

"Plugin 'mustache/vim-mustache-handlebars'
Plug 'tpope/vim-abolish'

"Plugin '/home/raoof/projects/dream-vim/.git'

Plug 'jdonaldson/vaxe'

Plug 'tikhomirov/vim-glsl'

"Plugin 'flazz/vim-colorschemes'
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-colorscheme-switcher'
"Plugin 'felixhummel/setcolors.vim'

Plug 'derekwyatt/vim-sbt'
Plug 'derekwyatt/vim-scala'
"Plugin 'ensime/ensime-vim'

"Plug 'chriskempson/vim-tomorrow-theme'
Plug 'tpope/vim-vividchalk'
Plug 'vim-scripts/vibrantink'
Plug 'flazz/vim-colorschemes'
"Plug 'felixhummel/setcolors.vim'

Plug 'eagletmt/neco-ghc'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
"Plugin 'eagletmt/ghcmod-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Twinside/vim-hoogle'
"Plugin 'eagletmt/ghcmod-vim'
"Plugin 'Shougo/vimproc.vim'
Plug 'bitc/vim-hdevtools'

"Plugin 'Shougo/neocomplete.vim'

Plug 'raichoo/purescript-vim'

"Plugin 'dsolstad/vim-wombat256i'

"Plugin '/home/raoof/projects/colon.vim/.git'
"Plugin 'jpalardy/vim-slime'

"Plug 'davidhalter/jedi-vim'

Plug 'JBakamovic/yavide'

"Plug 'magicalbanana/vim-sql-syntax'

"Plug 'reasonml/vim-reason-loader'
Plug 'MartinLafreniere/vim-PairTools'

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' }

"Plug 'venantius/vim-cljfmt'

"Plug 'sbdchd/neoformat'

Plug 'Chiel92/vim-autoformat'

Plug 'jeroenbourgois/vim-actionscript'

"Plug 'bhurlow/vim-parinfer'

"Plug 'bagrat/vim-workspace'
"Plug 'mkitt/tabline.vim'
"Plug 'webdevel/tabulous'
Plug 'ap/vim-buftabline'
Plug 'jceb/vim-orgmode'

Plug 'vim-scripts/dbext.vim'

"Plug 'StanAngeloff/php.vim'

Plug 'zah/nim.vim'
Plug 'udalov/kotlin-vim'

"Plug 'nsf/gocode', { 'rtp': 'vim', 'do': './vim/symlink.sh' }
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'calviken/vim-gdscript3'

"Plug 'OmniSharp/omnisharp-vim'
Plug 'rhysd/vim-crystal'

Plug 'posva/vim-vue'

"Plug 'reasonml-editor/vim-reason-plus'
"Plug 'autozimu/LanguageClient-neovim', {
    "\ 'branch': 'next',
    "\ 'do': 'bash install.sh',
    "\ }

"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
  "Plug 'Shougo/deoplete.nvim'
  "Plug 'roxma/nvim-yarp'
  "Plug 'roxma/vim-hug-neovim-rpc'
"endif

Plug 'artur-shaik/vim-javacomplete2'

Plug 'rust-lang/rust.vim'

Plug 'w0rp/ale'

"Plug 'zchee/deoplete-go', { 'do': 'make'}

"Plug 'skywind3000/asyncrun.vim'

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
"map :Q :q<CR>
map <F9> :Explore<CR>

let mapleader = ","

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
"autocmd FileType coffee map <buffer> <F5> :CoffeeRun<CR>
"autocmd FileType coffee map <buffer> <F6> :CoffeeWatch<CR>

set nohlsearch

"let g:syntastic_coffee_coffeelint_args = "--csv --file package.json"
let g:syntastic_coffee_coffeelint_args = "--csv --file /home/raoof/.coffeescript/coffeelint.json"
let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:syntastic_quiet_messages = { "type": "style" }


" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'


" syntax highlighting for ejs
au BufNewFile,BufRead *.ejs set filetype=html

" haskell neco-ghc plugin config
"-------------------------------------------------------

" http://www.stephendiehl.com/posts/vim_2016.html
"-------------------------------------------------------
"map ,s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

"let g:SuperTabDefaultCompletionType = '<c-x><c-o>'
let g:SuperTabDefaultCompletionType = '<c-n>'

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
"let g:elm_syntastic_show_warnings = 1
let g:elm_format_autosave = 1
au FileType elm map <buffer> <F1> :ElmShowDocs<CR>

"au FileType haskell map <buffer> <c-]> :exe "tag ".expand('<cWORD>')<CR>
au FileType haskell setlocal equalprg=hindent
map <c-s-f> gg=G''

au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>

" not working as I expected, override other filetypes
"au FileType clojure nmap <CR> <Plug>FireplaceCountPrint j
au FileType clojure nmap <space> <Plug>FireplaceCountPrint
"au FileType clojure nmap <s-space> :%Eval<cr>
"au FileType clojure nmap <C-]> <Plug>FireplaceDjump
au FileType clojure nmap <F1> <S-k>
"au FileType clojure nmap <F5> :Eval (. js/location reload true)<CR>

"au FileType clojure,html,javascript,css noremap <silent> <F5> :call system('/usr/bin/curl -H "Content-Type: text/plain" http://localhost:3000/hotreload/' . expand("%:p") . " -d " . shellescape(join(getline(1,'$'), "\n")) . " > /dev/null")<cr>
"au TextChanged,TextChangedI *.cljs,*.js silent call system('/usr/bin/curl -H "Content-Type: text/plain" http://localhost:3000/hotreload/' . expand("%:p") . " -d " . shellescape(join(getline(1,'$'), "\n")) . " > /dev/null")
func Hotreload()
  silent call system('/usr/bin/curl -H "Content-Type: text/plain" http://localhost:3000/hotreload/' . expand("%:p") . " -d " . shellescape(join(getline(1,'$'), "\n")) . " > /dev/null")
endfunc
au FileType clojure,html,javascript,css noremap <F5> :call Hotreload()<cr>
"au TextChanged,TextChangedI *.cljs,*.js call Hotreload()

"map <F5> :!reload-browser chromium<cr>
"map <S-F5> :!reload-browser chromium true<cr>

au BufNewFile,BufRead *.boot set filetype=clojure


" python
let g:jedi#goto_definitions_command = "<C-]>"



let g:syntastic_javascript_checkers = ['eslint']

" reason
"let g:syntastic_reason_checkers=['merlin']
"autocmd FileType reason let g:pairtools_reason_pairclamp = 1
"autocmd FileType reason let g:pairtools_reason_tagwrench = 0
"autocmd FileType reason let g:pairtools_reason_jigsaw    = 1
"autocmd FileType reason let g:pairtools_reason_autoclose  = 1
"autocmd FileType reason let g:pairtools_reason_forcepairs = 0
"autocmd FileType reason let g:pairtools_reason_closepairs = "(:),[:],{:}" . ',":"'
"autocmd FileType reason let g:pairtools_reason_smartclose = 1
"autocmd FileType reason let g:pairtools_reason_smartcloserules = '\w,(,&,\*'
"autocmd FileType reason let g:pairtools_reason_antimagic  = 1
"autocmd FileType reason let g:pairtools_reason_antimagicfield  = "Comment,String,Special"
"autocmd FileType reason let g:pairtools_reason_pcexpander = 1
"autocmd FileType reason let g:pairtools_reason_pceraser   = 1
"autocmd FileType reason let g:pairtools_reason_tagwrenchhook = 'tagwrench#BuiltinNoHook'
"autocmd FileType reason let g:pairtools_reason_twexpander = 0
"autocmd FileType reason let g:pairtools_reason_tweraser   = 0
"autocmd FileType reason let g:pairtools_reason_apostrophe = 0

" typescript
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']


"autocmd FileType javascript setlocal formatprg=prettier\ --stdin\ --trailing-comma\ es5
"let g:neoformat_try_formatprg = 1
"autocmd BufWritePre *.js Neoformat
"autocmd BufWritePre,TextChanged,InsertLeave *.js Neoformat

"au BufWrite * :Autoformat
noremap <F3> :Autoformat<CR>

"let g:clj_fmt_autosave = 0
let g:formatdef_cljfmt_node = '"cljfmt"'
let g:formatters_clojure = ['cljfmt_node']
"let g:formatters_edif = ['cljfmt_node']


"let g:formatdef_prettier = '"prettier"'
"let g:formatters_html = ['prettier']
"let g:formatters_vue = ['prettier']

hi BufTabLineHidden ctermbg=Black ctermfg=White 
hi BufTabLineFill ctermbg=Black
"hi BufTabLineCurrent ctermfg=black ctermbg=white
"hi BufTabLineCurrent ctermfg=white ctermbg=237
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


autocmd BufNewFile,BufRead *.edn set syntax=clojure
autocmd BufNewFile,BufRead *.edn set filetype=clojure


"au FileType cpp noremap <silent> <F5> :call system('urxvt-eval ./scripts/brun &')<cr>


"func BuildRun()
  "up
  "silent call system('urxvt-eval "./scripts/build && ./scripts/run" &')
"endfunc

"au FileType nim,cpp,c,asm,fasm noremap  <silent> <F5> :call BuildRun()<cr>
"au FileType nim,cpp,c,asm,fasm inoremap <silent> <F5> <esc>:call BuildRun()<cr>

"func BuildLib()
  "up
  "silent call system('urxvt-eval ./scripts/build-lib &')
"endfunc

"au FileType cpp,c noremap  <silent> <F4> :call BuildLib()<cr>
"au FileType cpp,c inoremap <silent> <F4> <esc>:call BuildLib()<cr>

"func UrxvtEval(str)
  "up
  "silent call system('urxvt-eval ' . a:str)
"endfunc


" set cursor to thin line
"let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
"let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode

" set cursor to thin line
"if has("autocmd")
  "au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  "au InsertEnter,InsertChange *
"\ if v:insertmode == 'i' | 
"\   silent execute '!echo -ne "\e[6 q"' | redraw! |
"\ elseif v:insertmode == 'r' |
"\   silent execute '!echo -ne "\e[4 q"' | redraw! |
"\ endif
"au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
"endif

" highlight current line in insert mode
"autocmd InsertEnter * set cul
"autocmd InsertLeave * set nocul

"set cul

"set statusline+=%f
"set laststatus=2
hi StatusLine ctermbg=white ctermfg=233
hi StatusLineNC ctermbg=white ctermfg=black
hi VertSplit ctermbg=234 ctermfg=234


au BufNewFile,BufRead *.fasm set filetype=fasm
au BufNewFile,BufRead *.dream set filetype=clojure


let g:OmniSharp_server_path = '/opt/omnisharp-roslyn-v1.32.1/omnisharp/OmniSharp.exe'
let g:OmniSharp_server_use_mono = 1
let g:syntastic_cs_checkers = ['code_checker']
"set completeopt=longest,menuone,preview
set completeopt=menuone
let g:OmniSharp_timeout = 5


let g:LanguageClient_serverCommands = {
    \ 'reason': ['ocaml-language-server', '--stdio'],
    \ 'ocaml': ['ocaml-language-server', '--stdio'],
    \ }

au FileType reason nmap <F3> :call LanguageClient_textDocument_formatting()<cr>


let g:deoplete#enable_at_startup = 1
"let g:neocomplete#enable_at_startup = 1

"set completeopt-=preview

"let g:ycm_add_preview_to_completeopt = 1


autocmd FileType java setlocal omnifunc=javacomplete#Complete
"nmap <F4> <Plug>(JavaComplete-Imports-AddMissing)
"imap <F4> <Plug>(JavaComplete-Imports-AddMissing)

let g:ycm_global_ycm_extra_conf = "~/projects/dotfiles/ycm_extra_conf.py"
"let g:ycm_filetype_specific_completion_to_disable = {
let g:ycm_filetype_blacklist = {
      \ 'java': 1,
      \}

let g:ycm_rust_src_path = '/usr/src/rustc-1.28.0'

"let g:syntastic_go_checkers = ['govet', 'errcheck', 'go']
let g:syntastic_go_checkers = ['gofmt', 'golint', 'govet', 'gometalinter']


"let g:ale_cache_executable_check_failures = 1

let g:ale_kotlin_languageserver_executable = "/opt/kotlin-language-server-0.1.1/bin/kotlin-language-server"


au FileType nim,cpp,c,asm,fasm noremap  <F5> :up <cr> :AsyncRun ./scripts/debug <cr>


let g:formatdef_elm_format = '"elm-format --stdin"'
let g:formatters_elm = ['elm_format']


let g:ale_linters = {
\   'cpp': [],
\   'cs': [],
\}

let g:ycm_semantic_triggers = {
     \ 'elm' : ['.'],
     \}


set signcolumn=yes


set splitbelow
"au FileType cpp,cs,kotlin noremap  <F5> :up <cr> :AsyncRun ./scripts/debug <cr>
"noremap <F12> :vert botright copen 100<CR>


au FileType cpp,cs,kotlin noremap  <F5> :up <cr> :silent call system('urxvt-eval ./scripts/debug &') <cr>

let g:ale_kotlin_kotlinc_options = "-d bin"
