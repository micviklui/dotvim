dotvim
======

my vimfile

Requirements for an IDE
-----------------------

* fast access to all files
* color scheme
* syntax highlighting
* static code analysis
* code completion
* go to definition
* refactoring
* debugging

Install vim
-----------

from source
```
hg clone https://vim.googlecode.com/hg/ vim
cd vim/src
./configure --enable-pythoninterp --with-features=huge --prefix=...
make && ...
...
```

Plugins
-------

```
~/.vim> tree -L 2
.
├── autoload
│   └── pathogen.vim
├── bundle
│   ├── YouCompleteMe
│   ├── ctrlp.vim
│   ├── linediff.vim
│   ├── nerdtree
│   ├── syntastic
│   ├── tagbar
│   ├── vim-airline
│   ├── vim-airline-themes
│   ├── vim-autopep8
│   ├── vim-autotag
│   ├── vim-buffergator
│   └── vim-fugitive
├── doc
├── ftplugin
│   ├── c.vim
│   ├── pep8.py
│   ├── python.vim
│   └── rst_tables.vim
├── indent
│   └── python.vim
├── plugin
├── spell
│   ├── en.utf-8.add
│   └── en.utf-8.add.spl
└── syntax
```

Usage in Windows
----------------

    # important variables etc.
    :version

    # where to load .vimrc from
    :echo $HOME
    # where to load vim files from
    :echo &runtimepath


Resources
---------

* [vim as a python IDE - Martin Brochhaus](https://www.youtube.com/watch?v=YhqsjUUHj6g)


TODO
----

Adapt paths etc. for usage in windows.
