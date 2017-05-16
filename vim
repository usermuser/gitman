#Записки программиста     http://eax.me/vim-commands/
"All commands should be in vimrc file, which is located at
"/usr/share/vim/vimrc 
#or 
#~/.vimrc
#добавлю от себя что в документации говорится что нужно менять файл /etc/vim/vimrc,
#так как другой файл при агрейде потрется

"To enable correct cyrillic symbols
set fileencoding=utf-8
set encoding=utf-8
set termencoding=utf-8

set showcmd
set showmatch
set ignorecase
set smartcase 
set incsearch
set autowrite
set hidden
set mouse=a
syntax on

:w !sudo tee % - write out the current file using sudo

"### one more blog about vim ##
http://dimio.org/fajl-nastrojki-vim-vimrc-dlya-linux-i-windows.html

#make session
:mks
#or mks ~/mysession.vim
#restore session
vim -S
#or vim -S ~/mysession.vim
#or :so ~/mysession.vim
#or :source ~/mysession.vim
#dont forget to save all opened tabs with command
:xa

#to suspend or hide current vim screen use:
CTRL+z 
#or 
suspend
#to resume type
fg
