install-terminal:
	stow -t ~/.config terminal

uninstall-terminal:
	stow -D -t ~/.config terminal

install-utils:
	git clone https://github.com/tmux-plugins/tpm ./utils/tmux/plugins/tpm
	stow -t ~/.config utils

uninstall-utils:
	stow -D -t ~/.config utils
