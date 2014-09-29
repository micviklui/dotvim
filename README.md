dotvim
======

my vimfile

vim as a python IDE - Martin Brochhaus
--------------------------------------

requirements for an IDE
+++++++++++++++++++++++

* fast access to all files
* color scheme
* syntax highlighting
* static code analysis
* code completion
* go to definition
* refactoring
* debugging

install vim
+++++++++++

hg clone https://vim.googlecode.com/hg/ vim

cd vim/src
./configure --enable-pythoninterp --with-features=huge --prefix=...
make && ...
...

plugins
+++++++
* vim-powerline
* python-mode
* ctrlp.vim
* python_editing
