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
set syntax=on

" --------------------------------
" Netrw
" --------------------------------
" let g:netrw_liststyle=3
" let g:netrw_list_hide=''
" let g:netrw_altv=1
" let g:netrw_alto=0

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

NeoBundle 'junegunn/seoul256.vim'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

if !has('vim_starting')
  call neobundle#call_hook('on_source')
endif

endif
