install-terminal:
	sudo dnf -y install alacritty tmux fish ranger htop
	stow -t ~/.config terminal
	git clone https://github.com/tmux-plugins/tpm ./terminal/tmux/plugins/tpm

uninstall-terminal:
	stow -D -t ~/.config terminal

install-sway:
	stow -t ~/.config sway

uninstall-sway:
	stow -D -t ~/.config sway

