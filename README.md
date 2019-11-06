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
