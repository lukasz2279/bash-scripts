#!/usr/bin/env bash

packages=(
	# system utilities 
		eza
		btop
		fzf
		duf
		neovim
		starship
		nautilus
		unzip
		rofi

	# hyprland
		waybar
		hyprshot
		hyprlock

	# notifications
		swaync

	# audio
	  spotify
		pavucontrol

	# fonts
		ttf-jetbrains-mono-nerd

	# appearance
		nwg-look
		swww

	# catppuchin-mocha
		catppuccin-gtk-theme-mocha
		catppuccin-cursors-mocha
		catppuccin-sddm-theme-mocha
		papirus-folders-catppuccin-git
)

for package in ${packages[@]}; do
  paru -S --noconfirm ${package}
done
