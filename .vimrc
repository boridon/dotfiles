if 1

set number
set showmatch
set tabstop=4
set shiftwidth=4
set backspace=start,eol,indent
" set whichwrap=b,s,<,>,[,]
set helplang=ja,en
set listchars=tab:>.
set list
set is
set hls
set paste
set noautoindent
let loaded_matchparen = 1

" --------------------------------
" Color
" --------------------------------
autocmd ColorScheme * highlight LineNr term=underline ctermfg=15 ctermbg=95
autocmd ColorScheme * highlight Statement term=bold ctermfg=228
autocmd ColorScheme * highlight Comment ctermfg=111
autocmd ColorScheme * highlight Search term=reverse ctermfg=0 ctermbg=3
autocmd ColorScheme * highlight PreProc term=underline ctermfg=208
autocmd ColorScheme * highlight Special term=bold ctermfg=13
colorscheme default
syntax on

" --------------------------------
" Netrw
" --------------------------------
let g:netrw_liststyle=3
" let g:netrw_list_hide=''
let g:netrw_altv=1
" let g:netrw_alto=0
" let g:netrw_winsize=75

" --------------------------------
" NeoBundle
" --------------------------------
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

if v:version >= 703
  NeoBundle 'Shougo/unite.vim'
endif

" NeoBundle 'altercation/vim-colors-solarized'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

if !has('vim_starting')
  call neobundle#call_hook('on_source')
endif

" --------------------------------
"  ColorScheme
" --------------------------------
" set background=light
" colorscheme solarized
"
" if &term =~ "xterm-256color" || "screen-256color"
"   set t_Co=256
"   set t_Sf=[3%dm
"   set t_Sb=[4%dm
" elseif &term =~ "xterm-color"
"   set t_Co=8
"   set t_Sf=[3%dm
"   set t_Sb=[4%dm
" endif
"
" hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c


endif
