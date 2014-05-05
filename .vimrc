" https://github.com/oryband/dotvim/blob/master/vimrc
" http://stackoverflow.com/questions/164847/what-is-in-your-vimrc
" http://amix.dk/vim/vimrc.html
" http://joncairns.com/2012/05/using-vim-as-a-php-ide/
"
" http://stackoverflow.com/questions/934233/cscope-or-ctags-why-choose-one-over-the-other
"

" Necesary  for lots of cool vim things
set nocompatible

" This shows what you are typing as a command.  I love this!
set showcmd

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

" Enable syntax highlighting
syntax enable

colorscheme desert
set background=dark

" Set utf8 as standard encoding
set encoding=utf8

" Use spaces instead of tabs
set expandtab
set tabstop=2

" 1 tab == 2 spaces
set shiftwidth=2
" Automatically set the indent of a new line (local to buffer).
set autoindent

" Be smart when using tabs ;)
set smartindent

" Linebreak on tw characters
set lbr
set tw=80

" always show the status line
set laststatus=2

" Format the status line
" Status line gnarliness
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
" set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]


" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Returns true if paste mode is enabled
function! HasPaste()
  if &paste
    return 'PASTE MODE  '
  en
  return ''
endfunction

" Enable mouse support in console
set mouse=a

" Line Numbers PWN!
" set number

" This is totally awesome - remap jj to escape in insert mode.  You'll never type jj anyway, so it's great!
inoremap jj <Esc>

nnoremap JJJJ <Nop> 

" http://stackoverflow.com/questions/5559029/quickly-switching-buffers-in-vim-normal-mode
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>
"nnoremap gn :tabnew

" http://stackoverflow.com/questions/9511253/how-to-effectively-use-vim-wildmenu
set wildmenu
set wildmode=list:longest,full

" ctags, jsctags
set tags=./tags,tags;/

" http://www.vim.org/scripts/script.php?script_id=3465
" tagbar
nmap tt :TagbarToggle 

" save with cmd-s
:nmap <D-s> :w<cr>

" clear last search highlighting
" http://stackoverflow.com/a/657457/1469176
" :noh
" nnoremap <F3> :set hlsearch!<CR>

" http://www.techrepublic.com/article/configure-vi-for-java-application-development/#.
" vim for java
" set sm
" set ai
" syntax on
" let java_highlight_all=1
" let java_highlight_functions="style"
" let java_allow_cpp_keywords=1
" " ctags: jump to identifier with Ctrl
" ctags -f ~/.tags -R ~/myprojects/src $JAVA_HOME/src
" set tags=~/.tags
" set complete=.,w,b,u,t,i


execute pathogen#infect()

" https://github.com/Shutnik/jshint2.vim

"
" https://github.com/scrooloose/nerdtree 
"
" open nerdree automatically
autocmd vimenter * NERDTree
" nerdtree shortcut
" map <C-n> :NERDTreeToggle<CR>
" close vim if nerdtree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif



"
" vundle
"
" https://github.com/gmarik/vundle
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"
" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" youcompleteme
"Bundle 'Valloric/YouCompleteMe'

" calendar.vim https://github.com/itchyny/calendar.vim
Bundle 'itchyny/calendar.vim'
let g:calendar_first_day = "monday"
let g:calendar_google_calendar = 5
let g:calendar_google_task = 1

"
" Automatically detect file types, and enable file-type-specific plugins and indentation.
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"

