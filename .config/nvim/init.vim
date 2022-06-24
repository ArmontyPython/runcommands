set noexpandtab
set runtimepath^=~0/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
    source ~/.vimrc
lua require('init')
