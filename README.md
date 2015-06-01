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
│   ├── DrawIt.vim
│   └── pathogen.vim
├── bundle
│   ├── ctrlp.vim
│   ├── jedi-vim
│   ├── jshint2.vim
│   ├── nerdtree
│   ├── pydiction
│   ├── syntastic
│   ├── tagbar
│   ├── tern_for_vim
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
├── syntax
│   └── php.vim
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


Resources
---------

* [vim as a python IDE - Martin Brochhaus](https://www.youtube.com/watch?v=YhqsjUUHj6g)


TODO
----

Adapt paths etc. for usage in windows.
