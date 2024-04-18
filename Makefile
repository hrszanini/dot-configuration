nvim-backup:
	cp -r ~/.config/nvim{,.bak}

ranger-backup:
	cp -r ~/.config/ranger{,.bak}

tmux-backup:
	cp -r ~/.config/tmux{,.bak}

fish-backup:
	cp -r ~/.config/fish{,.bak}

backup: nvim-backup ranger-backup tmux-backup fish-backup

nvim-save:
	cp -rf ~/.config/nvim ./nvim 

ranger-save:
	cp -rf ~/.config/ranger ./ranger 

tmux-save:
	cp -rf ~/.config/tmux ./tmux 

fish-save:
	cp -rf ~/.config/fish ./fish 

save: nvim-save ranger-save tmux-save fish-save 

nvim-install:
	cp -rf ./nvim ~/.config/nvim

ranger-install:
	cp -rf ./ranger ~/.config/ranger

tmux-install:
	cp -rf ./tmux ~/.config/tmux

fish-install:
	cp -rf ./fish ~/.config/fish

install: nvim-install ranger-install tmux-install fish-install 
