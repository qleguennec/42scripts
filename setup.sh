if [ -d "$HOME/42FileChecker" ]; then
	echo File checker OK
else
	git clone https://github.com/jgigault/42FileChecker ~/42FileChecker
fi

if [ -d "$HOME/dotfiles" ]; then
	cp -r ~/dotfiles/. ~
	rm -rf ~/.git
	echo Dotfiles OK
else
	git clone https://github.com/qleguennec/dotfiles.git ~/dotfiles
	cp -r ~/dotfiles/. ~
	rm -rf ~/.git
	echo Dotfiles OK
fi
