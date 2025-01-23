install-terminal:
	stow -t ~/.config terminal

uninstall-terminal:
	stow -D -t ~/.config terminal

install-utils:
	git clone https://github.com/tmux-plugins/tpm ./utils/tmux/plugins/tpm
	stow -t ~/.config utils

uninstall-utils:
	stow -D -t ~/.config utils

install-hyprland:
	cp ./hyprland/hypr/hyprland.conf ~/.config/hypr/hyprland.conf
	stow -t ~/.config --ignore=hyprland.conf hyprland

uninstall-hyprland:
	stow -D -t ~/.config hyprland
