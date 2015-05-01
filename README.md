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
* others:
```
~/.vim> tree -L 2
.
├── autoload
│   ├── DrawIt.vim
│   └── pathogen.vim
├── bundle
│   ├── ctrlp.vim
│   ├── jedi-vim
│   ├── nerdtree
│   ├── syntastic
│   ├── tagbar
│   ├── vim-airline
│   ├── vim-autopep8
│   ├── vim-autotag
│   ├── vim-bufferline
│   └── vim-fugitive
├── doc
│   ├── DrawIt.txt
│   └── tags
├── ftplugin
│   ├── python.vim
│   └── rst_tables.vim
├── indent
│   └── python.vim
├── plugin
│   ├── cecutil.vim
│   └── DrawItPlugin.vim
└── spell
    ├── en.utf-8.add
    └── en.utf-8.add.spl
```

Usage in Windows
----------------

    # important variables etc.
    :version

    # where to load .vimrc from
    :echo $HOME
    # where to load vim files from
    :echo &runtimepath

TODO
----

Adapt paths etc. for usage in windows.
