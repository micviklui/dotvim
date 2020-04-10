dotvim
======

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
* diff (character-wise)

Install dotvim
--------------
```bash
git clone https://github.com/micviklui/dotvim.git ~/dotvim
ln -s ~/dotvim/.vimrc .vimrc
ln -s ~/dotvim/.vim .vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```

Install vim from source
-----------------------
```bash
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
├── bundle
│   ├── ctrlp.vim
│   ├── diffchar.vim
│   ├── nerdtree
│   ├── riv.vim
│   ├── syntastic
│   ├── tagbar
│   ├── vim-airline
│   ├── vim-airline-themes
│   ├── vim-autopep8
│   ├── vim-autotag
│   ├── vim-buffergator
│   ├── vim-clang-format
│   ├── vim-fugitive
│   ├── Vundle.vim
│   └── YouCompleteMe
├── ftplugin
│   ├── c.vim
│   ├── pep8.py
│   └── python.vim
├── indent
│   └── python.vim
├── spell
│   ├── en.utf-8.add
│   └── en.utf-8.add.spl
└── syntax
    └── php.vim
```

Usage in Windows
----------------
```
# important variables etc.
:version

# where to load `_vimrc` (`.vimrc`) from
:echo $HOME
# where to load `vimfiles` (`.vim`) from
:echo &runtimepath
```

Resources
---------

* [vim as a python IDE - Martin Brochhaus](https://www.youtube.com/watch?v=YhqsjUUHj6g)


TODO
----

Adapt paths etc. for usage in windows.
