#!/bin/sh

#install desktop packages
sudo pacman -Syyu xorg lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings i3 i3-gaps i3lock materia-gtk-theme papirus-icon-theme xfce4-terminal  --noconfirm --needed

#install optional packages
sudo pacman -S ibus okular gparted xf86-input-synaptics ffmpegthumbs nemo ttf-dejavu ttf-liberation feh picom lxappearance archlinux-wallpaper polybar --noconfirm --needed

#enable sddm
sudo systemctl enable lightdm

#install rofi
cd /a
sudo pacman -S rofi --noconfirm --needed
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
sudo ./setup.sh

#enable numlock on boot
sudo pacman -S numlockx
echo "greeter-setup-script=/usr/bin/numlockx on" | tee -a /etc/lightdm/lightdm.conf

#Copy .files
cd /a/desktop-install
cp config /home/rich/.config/i3/
mkdir /home/rich/.config/polybar
cp config.ini /home/rich/.config/polybar/

