#!/bin/sh

#install desktop packages
sudo pacman -Syyu xorg lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings i3 i3-gaps i3lock i3status materia-gtk-theme papirus-icon-theme xfce4-terminal  --noconfirm --needed

#install optional packages
sudo pacman -S ibus okular gparted xf86-input-synaptics ffmpegthumbs nemo ttf-dejavu ttf-liberation dmenu nitrogen picom lxappearance archlinux-wallpaper --noconfirm --needed

#enable sddm
sudo systemctl enable lightdm

#enable numlock on boot
sudo pacman -S numlockx
echo "greeter-setup-script=/usr/bin/numlockx on" | tee -a /etc/lightdm/lightdm.conf

