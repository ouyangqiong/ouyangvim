set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'tmhedberg/SimpylFold'
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'taglist.vim'
let Tlist_Ctags_Cmd='ctags'
let Tlist_Show_One_File=1
let Tlist_WinWidt =28
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
set tags=~/tags
call vundle#end()
filetype plugin indent on
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Enable folding with the spacebar
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
let g:SimpylFold_docstring_preview=1
