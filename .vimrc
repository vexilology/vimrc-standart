"other
set number
set shiftwidth=4
set tabstop=4
set smarttab
syntax on

colorscheme gotham256

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set hlsearch
set incsearch

"code::stats
let g:codestats_api_key = 'SFMyNTY.YVc1allYSnVZWFJwTUc0PSMjTVRrMk9BPT0.EFSHNc8umITC5_pRuYIYPyS4AspsQYVMuokaFt1PKKQ'

"mappings
map <C-n> :NERDTreeToggle<CR>

"VundleBundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'https://gitlab.com/code-stats/code-stats-vim.git'
Plugin 'https://github.com/ycm-core/YouCompleteMe'
Plugin 'https://github.com/vim-syntastic/syntastic.git'
Plugin 'https://github.com/ap/vim-css-color'
Plugin 'whatyouhide/vim-gotham'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'
Plugin 'https://github.com/jiangmiao/auto-pairs'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on
