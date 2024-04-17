nvim-backup:
	cp -r ~/.config/nvim{,.bak}

ranger-backup:
	cp -r ~/.config/ranger{,.bak}

tmux-backup:
	cp -r ~/.config/tmux{,.bak}

fish-backup:
	cp -r ~/.config/fish{,.bak}

backup: nvim-backup ranger-backup tmux-backup fish-backup

nvim-install:
	cp -rf ./nvim ~/.config/nvim

ranger-install:
	cp -rf ./ranger ~/.config/ranger

tmux-install:
	cp -rf ./tmux ~/.config/tmux

fish-install:
	cp -rf ./fish ~/.config/tmux

install: nvim-install ranger-install tmux-install fish-install 
