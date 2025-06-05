install-dependencies:
	sudo dnf install git stow 

install-terminal:
	sudo dnf -y install alacritty tmux ranger htop zsh
	stow -t ~/.config terminal
	stow -t ~ terminal-home
	git clone https://github.com/tmux-plugins/tpm ./terminal/tmux/plugins/tpm

uninstall-terminal:
	stow -D -t ~/.config terminal

install-sway:
	stow -t ~/.config sway

uninstall-sway:
	stow -D -t ~/.config sway

