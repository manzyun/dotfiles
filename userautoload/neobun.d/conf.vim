"Note: vim-tiny か vim-small だった場合にはプラグインを読み込まない。
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" 非同期通信を可能にする
" 'build'が指定されているのでインストール時に自動的に
" 指定されたコマンドが実行され vimproc がコンパイルされる
NeoBundle "Shougo/vimproc", {
\ "build": {
\   "windows"   : "make -f make_mingw32.mak",
\   "cygwin"    : "make -f make_cygwin.mak",
\   "mac"       : "make -f make_mac.mak",
\   "unix"      : "make -f make_unix.mak",
\ }}

"  Packages is this under line
" --------------------------------
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle "thinca/vim-template"
NeoBundleLazy "Shougo/unite.vim", {
\ "autoload": {
\   "commands": ["Unite", "UniteWithBufferDir"]
\ }}
NeoBundleLazy 'h1mesuke/unite-outline', {
\ "autoload": {
\   "unite_sources": ["outline"],
\ }}
NeoBundleLazy "Shougo/vimfiler", {
\ "depends": ["Shougo/unite.vim"],
\ "autoload": {
\   "commands": ["VimFilerTab", "VimFiler", "VimFilerExplorer"],
\   "mappings": ['<Plug>(vimfiler_switch)'],
\   "explorer": 1,
\ }}
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-scripts/Align'
NeoBundle 'vim-scripts/YankRing.vim'

if has('lua') && v:version >= 703 && has('patch885')
	NeoBundleLazy "Shougo/neocomplete.vim", {
		\ "autoload": {
		\   "insert": 1,
		\ },}
	let g:neocomplete#enable_at_startup = 1
	let s:hooks = neobundle#get_hooks("neocomplete.vim")
	function! s:hooks.on_source(bundle)
        	let g:acp_enableAtStartup = 0
		let g:neocomplet#enable_smart_case = 1
	endfunction
else
	NeoBundleLazy "Shougo/neocomplcache.vim", {
		\ "autoload": {
		\   "insert": 1,
		\ },}
	let g:neocomplcache_enable_at_startup = 1
	let s:hooks = neobundle#get_hooks("neocomplcache.vim")
	function! s:hooks.on_source(bundle)
		let g:acp_enableAtStartup = 0
		let g:neocomplcache_enable_smart_case = 1
	endfunction
endif

NeoBundle "nathanaelkane/vim-indent-guides"
NeoBundleLazy "sjl/gundo.vim", {
\ "autoload": {
\   "commands": ['GundoToggle'],
\}}
NeoBundleLazy "vim-scripts/TaskList.vim", {
\ "autoload": {
\   "mappings": ['<Plug>TaskList'],
\}}
NeoBundleLazy "majutsushi/tagbar", {
\ "autload": {
\   "commands": ['TagbarToggle'],
\}}
NeoBundle "scrooloose/syntastic"
" pip install flake8 すること

NeoBundleLazy "davidhalter/jedi-vim", {
\ "autoload": {
\   "filetypes": ["python", "python3", "djangohtml"],
\}}
" pip install jedi すること

NeoBundle "Rykka/riv.vim"

call neobundle#end()

" ファイルタイププラグインおよびインデントを有効化
filetype plugin indent on

" インストールされていないプラグインのチェックおよびダウンロード
NeoBundleCheck

