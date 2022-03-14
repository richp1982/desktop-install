#!/bin/sh

#install desktop packages
sudo pacman -Syyu xorg sddm plasma-desktop --noconfirm --needed

#install optional packages
sudo pacman -S ibus kaccounts-integration kscreen packagekit-qt5 plasma-nm powerdevil scim okular breeze breeze-gtk kde-gtk-config kinfocenter kate konsole kwallet kwallet-pam oxygen sddm-kcm kdecoration kscreenlocker ksystemstats kwin libkscreen libksysguard plasma-disks plasma-systemmonitor plasma-workspace plasma-workspace-wallpapers polkit-kde-agent systemsettings xdg-desktop-portal-kde kmix bluedevil kde-cli-tools gparted firefox  xf86-input-synaptics kdegraphics-thumbnailers ffmpegthumbs colord-kde ttf-dejavu ttf-liberation dolphin --noconfirm --needed

#enable sddm
sudo systemctl enable sddm

#sddm login settings
#select keyboard en=english (QWERTY) fr=french (AZERTY)
echo setxkbmap "?" | sudo tee -a /usr/share/sddm/scripts/Xsetup
sudo cp sddm.conf /etc/sddm.conf
