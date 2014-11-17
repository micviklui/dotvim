dotvim
======

my vimfile

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
