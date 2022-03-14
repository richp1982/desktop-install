#!/bin/sh

#install desktop packages
sudo pacman -Syyu xorg sddm i3 i3-gaps i3lock i3status  --noconfirm --needed

#install optional packages
sudo pacman -S ibus packagekit-qt5 okular kate konsole gparted xf86-input-synaptics ffmpegthumbs ttf-dejavu ttf-liberation dolphin kde-cli-tools kde-graphical-thumbnailers dolphin-plugins dmenu nitrogen picom lxappearance kvantum qt5ct --noconfirm --needed

#enable sddm
sudo systemctl enable sddm

#sddm login settings
#select keyboard en=english (QWERTY) fr=french (AZERTY)
echo setxkbmap "?" | sudo tee -a /usr/share/sddm/scripts/Xsetup
sudo cp sddm.conf /etc/sddm.conf
