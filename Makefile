
all: folders bundle
	@cd .vim && ls

bundle: folders .vim/bundle/Vundle.vim

# installed via apt:
# .vim/bundle/YouCompleteMe

.vim/bundle/Vundle.vim:
	@cd .vim/bundle && git clone https://github.com/VundleVim/Vundle.vim.git
	vim +PluginInstall +qall

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
	
