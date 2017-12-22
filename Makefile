
all: folders bundle
	@cd .vim && ls

bundle: folders .vim/autoload/pathogen.vim .vim/bundle/nerdtree .vim/bundle/syntastic .vim/bundle/vim-airline .vim/bundle/vim-airline-themes .vim/bundle/vim-autopep8 .vim/bundle/vim-autotag .vim/bundle/vim-buffergator .vim/bundle/vim-fugitive

# installed via apt:
# .vim/bundle/YouCompleteMe

.vim/autoload/pathogen.vim:
	@echo "loading pathogen"
	@cd .vim/autoload && wget https://tpo.pe/pathogen.vim

.vim/bundle/YouCompleteMe:
	@cd .vim/bundle && git clone https://github.com/Valloric/YouCompleteMe && cd YouCompleteMe && ./install.py --clang-completer  --js-completer

.vim/bundle/nerdtree:
	@cd .vim/bundle && git clone https://github.com/scrooloose/nerdtree

.vim/bundle/syntastic:
	@cd .vim/bundle && git clone https://github.com/scrooloose/syntastic

.vim/bundle/vim-airline:
	@cd .vim/bundle && git clone https://github.com/bling/vim-airline

.vim/bundle/vim-airline-themes:
	@cd .vim/bundle && git clone https://github.com/vim-airline/vim-airline-themes

.vim/bundle/vim-autopep8:
	@cd .vim/bundle && git clone https://github.com/tell-k/vim-autopep8

.vim/bundle/vim-autotag:
	@cd .vim/bundle && git clone https://github.com/craigemery/vim-autotag

.vim/bundle/vim-buffergator:
	@cd .vim/bundle && git clone https://github.com/jeetsukumaran/vim-buffergator

.vim/bundle/vim-fugitive:
	@cd .vim/bundle && git clone https://github.com/tpope/vim-fugitive

folders: .vim/autoload .vim/bundle .vim/doc .vim/indent .vim/plugin .vim/spell .vim/syntax 

.vim/autoload:
	@mkdir .vim/autoload

.vim/bundle:
	@mkdir .vim/bundle

.vim/doc:
	@mkdir .vim/doc

.vim/plugin:
	@mkdir .vim/plugin

.vim/spell:
	@mkdir .vim/spell

.vim/syntax:
	@mkdir .vim/syntax
	
