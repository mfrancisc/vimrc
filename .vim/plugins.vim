filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'StanAngeloff/php.vim'
Plugin 'joonty/vim-phpqa.git'
Plugin 'joonty/vim-phpunitqf.git'
Plugin 'joonty/vdebug.git'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

