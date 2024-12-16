"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => References
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" https://github.com/scrooloose/vimfiles
" https://github.com/amix/vimrc
" http://vim.spf13.com/
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Necesary for lots of cool vim things
set nocompatible

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
" http://stackoverflow.com/questions/9511253/how-to-effectively-use-vim-wildmenu
set wildmenu
set wildmode=list:longest,full

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set visualbell
set t_vb=
set tm=500

" Show what you are typing as a command
set showcmd

" Enable mouse support in console
set mouse=a

" tagbar
nmap tt :TagbarToggle

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

colorscheme desert
set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=m
    set guioptions-=e
    set t_Co=256
    " set guitablabel=%M\ %t
    if &diff
        set lines=999
        set columns=999
    else
        set lines=75
        set columns=112
    endif
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" http://superuser.com/questions/364792/how-can-i-set-the-default-font-for-gvim-on-windows
if has("gui_running")
    if has("win32") || has("win64")
        " set guifont=Consolas:h12
        " set guifont=DejaVu_Sans_Mono:h10:cANSI
        set guifont=Ubuntu Mono:h12
        " http://vim.wikia.com/wiki/Copy,_cut_and_paste
        source $VIMRUNTIME/mswin.vim
    else
        set guifont=Ubuntu\ Mono\ 12
    endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
"set shiftwidth=2
"set tabstop=2
set shiftwidth=4
set tabstop=4

" Linebreak on tw characters
set lbr
set tw=80

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"autocmd FileType cpp setlocal shiftwidth=2 tabstop=2

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/
" buffer   ... in-memory text of a file
" window   ... viewport on a buffer
" tab page ... collection of windows

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
"map <space> /
"map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" http://stackoverflow.com/questions/5559029/quickly-switching-buffers-in-vim-normal-mode
map gn :bn<cr>
map gp :bp<cr>
map gd :Bclose<cr>
"nnoremap gn :tabnew

" Close the current buffer
"map <leader>bd :Bclose<cr>

" Close all the buffers
"map <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
" :tabnew
" :tabs
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
" map <leader>to :tabonly<cr>
" map <leader>tc :tabclose<cr>
" map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" automatically change window's cwd to file's dir
set autochdir

" Specify the behavior when switching between buffers 
try
set switchbuf=useopen,usetab,newtab
set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif
" Remember info about open buffers on close
set viminfo^=%

" ctags, jsctags
" invoke 'ctags -R .' in root dir
" python -c "from distutils.sysconfig import get_python_lib; print get_python_lib()"
set tags=./tags;$HOME
" http://andrewradev.com/2011/06/08/vim-and-ctags/
autocmd BufWritePost *
            \ if filereadable('tags') |
            \   call system('ctags -a '.expand('%')) |
            \ endif
" tag completion
inoremap <c-x><c-]> <c-]>

" moving in python code
" http://justinlilly.com/vim/vim_and_python.html
"

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This is totally awesome - remap jj to escape in insert mode. You'll never type jj anyway, so it's great!
inoremap jj <Esc>
nnoremap JJJJ <Nop>

" Remap VIM 0 to first non-blank character
"map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
"nmap <M-j> mz:m+<cr>`z
"nmap <M-k> mz:m-2<cr>`z
"vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
"vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

"if has("mac") || has("macunix")
"nmap <D-j> <M-j>
"nmap <D-k> <M-k>
"vmap <D-j> <M-j>
"vmap <D-k> <M-k>
"endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
endfunc

autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" http://vim.wikia.com/wiki/Search_and_replace_the_word_under_the_cursor
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching and cope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When you press gv you vimgrep after the selected text
"vnoremap <silent> gv :call VisualSelection('gv')<CR>

" Open vimgrep and put the cursor in the right position
"map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

" Vimgreps in the current file
"map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with vimgrep, display your results in cope by doing:
"   <leader>cc
"
" To go to the next search result do:
"   <leader>n
"
" To go to the previous search results do:
"   <leader>p
"
"map <leader>cc :botright cope<cr>
"map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
"map <leader>n :cn<cr>
"map <leader>p :cp<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scribble
"map <leader>q :e ~/buffer<cr>

" Toggle paste mode on and off
"map <leader>pp :setlocal paste!<cr>

" copy and paste with mouse and <C-c> and <C-v>
:vmap <C-c> "+y

" https://unix.stackexchange.com/questions/196098/copy-paste-in-xfce4-terminal-adds-0-and-1
set t_BE=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
	exe "menu Foo.Bar :" . a:str
	emenu Foo.Bar
	unmenu Foo
endfunction

function! VisualSelection(direction) range
	let l:saved_reg = @"
	execute "normal! vgvy"

	let l:pattern = escape(@", '\\/.*$^~[]')
	let l:pattern = substitute(l:pattern, "\n$", "", "")

	if a:direction == 'b'
	execute "normal ?" . l:pattern . "^M"
	elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => package manager and packages/plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vundle, alternative to pathogen
" https://github.com/gmarik/Vundle.vim
set nocompatible  " required by vundle
filetype off  " required by vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle
" let Vundle manage Vundle, required by vundle
Plugin 'VundleVim/Vundle.vim'

" NERDTree
" https://github.com/scrooloose/nerdtree
Plugin 'scrooloose/nerdtree'
" autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore=['\~$', '\.py\(c\|o\)$', '\.\(git\|svn\)$', '^\.\(DS_Store\|tags\)$', '^\.cache$', '^\.ipynb_checkpoints$', '^\.pytest_cache$', '.*egg-info$']
let NERDTreeShowHidden=1

" vim-autotag
" automatically update tags on saving
" https://github.com/craigemery/vim-autotag
Plugin 'craigemery/vim-autotag'

" python enforce pep8
" https://github.com/tell-k/vim-autopep8
Plugin 'tell-k/vim-autopep8'
let g:autopep8_disable_show_diff=1
"autocmd FileType python map <buffer> <F3> :call Autopep8()<CR>

" YouCompleteMe
" fuzzy logic autocomplete for C, python
" https://github.com/Valloric/YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" vim-clang-format
" Vim plugin for clang-format, a formatter for C, C++ and Obj-C code
Plugin 'rhysd/vim-clang-format'
let g:clang_format#command='clang-format-6.0'
"let g:clang_format#detect_style_file = "1"
"let g:clang_format#auto_format = "1"
"let g:clang_format#auto_formatexpr = "1"
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
"au FileType c ClangFormatAutoEnable
autocmd FileType c,cpp,objc vnoremap <buffer>= :ClangFormat<CR>

" syntastic
" syntax checker for multiple languages
" https://github.com/scrooloose/syntastic
" pip install --upgrade pyflakes
Plugin 'scrooloose/syntastic'
function! ToggleErrors()
    if empty(filter(tabpagebuflist(), 'getbufvar(v:val, "&buftype") is# "quickfix"'))
         " No location/quickfix list shown, open syntastic error location panel
         Errors
    else
        lclose
    endif
endfunction
nnoremap <silent> <C-e> :<C-u>call ToggleErrors()<CR>
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq = 1
" syntastic for javascript
"let g:syntastic_javascript_checkers = ['jshint']

" alternative to syntastic
" https://github.com/w0rp/ale
"Plugin 'w0rp/ale'

" git
" https://github.com/tpope/vim-fugitive
Plugin 'tpope/vim-fugitive'

" jshint2
" javascript linter
" https://github.com/Shutnik/jshint2.vim
" javascript code analysis
" https://github.com/marijnh/tern_for_vim

" tagbar
" http://www.vim.org/scripts/script.php?script_id=3465
" https://github.com/majutsushi/tagbar.git
Plugin 'majutsushi/tagbar'
" taglist.vim
" alternative(!) to tagbar
" http://www.vim.org/scripts/script.php?script_id=273

" riv.vim
Plugin 'gu-fan/riv.vim'
autocmd Syntax rst setlocal foldmethod=syntax
autocmd Syntax rst normal zR

" php.vim
" http://www.vim.org/scripts/script.php?script_id=604

" vim-airline
" https://github.com/bling/vim-airline
Plugin 'bling/vim-airline'
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
Plugin 'vim-airline/vim-airline-themes'
""let g:airline_theme='dark'
let g:airline_theme = 'powerlineish'

"" ctrlp.vim
"" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
"" https://github.com/kien/ctrlp.vim.git
Plugin 'ctrlpvim/ctrlp.vim'
"let g:ctrlp_map = '<c-p>'
"" Use a leader instead of the actual named binding
""nmap <leader>p :CtrlP<cr>
"" https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/
"" default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class)$',
\}
if executable('rg')
  let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
endif
"" only list checked-in files
"let g:ctrlp_user_command = {
"  \ 'types': {
"    \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others'],
"    \ 2: ['.hg', 'hg --cwd %s locate -I .']
"    \ },
"  \ 'fallback': 'find %s -type f'
"  \ }
"" only search within local repo (root dir contains .git)
"" or make current dir root
"" in large repos: "touch .ctrlp" to specify root dir
let g:ctrlp_root_markers = ['.ctrlp']
"" Use the nearest .git directory as the cwd
"" This makes a lot of sense if you are working on a project that is in version
"" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'
"" Easy bindings for its various modes
""nmap <leader>bb :CtrlPBuffer<cr>
""nmap <leader>bm :CtrlPMixed<cr>
""nmap <leader>bs :CtrlPMRU<cr>
nnoremap <leader>. :CtrlPTag<cr>

" vim-buffergator
" list, select and switch between buffers.
" https://github.com/jeetsukumaran/vim-buffergator
Plugin 'jeetsukumaran/vim-buffergator'

"" vim-indent-guides
"" https://github.com/nathanaelkane/vim-indent-guides
"Plugin 'nathanaelkane/vim-indent-guides'
"let g:indent_guides_auto_colors = 0
"let g:indent_guides_guide_size = 1
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=lightgrey
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey

" Highlight the exact differences, based on characters and words
Plugin 'rickhowe/diffchar.vim'


call vundle#end()            " required by vundle
filetype plugin indent on    " required by vundle

