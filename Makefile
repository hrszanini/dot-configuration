install-terminal:
	stow -t ~/.config terminal

uninstall-terminal:
	stow -D -t ~/.config terminal

install-utils:
	stow -t ~/.config utils

uninstall-utils:
	stow -D -t ~/.config utils
