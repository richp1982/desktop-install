#!/bin/sh

#install plasma desktop
sudo pacman -Syyu xorg sddm plasma-desktop --noconfirm --needed

#install optional packages
sudo pacman -S ibus kaccounts-integration kscreen packagekit-qt5 plasma-nm powerdevil scim okular breeze breeze-gtk kde-gtk-config kinfocenter kate konsole kwallet kwallet-pam oxygen sddm-kcm kdecoration kscreenlocker ksystemstats kwin libkscreen libksysguard plasma-disks plasma-systemmonitor plasma-workspace plasma-workspace-wallpapers polkit-kde-agent systemsettings xdg-desktop-portal-kde kmix bluedevil kde-cli-tools gparted firefox  xf86-input-synaptics kdegraphics-thumbnailers ffmpegthumbs colord-kde ttf-dejavu ttf-liberation dolphin --noconfirm --needed

#install audio & DVD packages
sudo pacman -S alsa-utils alsa-firmware pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-equalizer pulseaudio-jack vlc mplayer rhytmbox libcdio audiocd-kio lidvdread libdvdcss libdvdnav --noconfirm --needed

#Install apps
sudo pacman -S gimp blender libreoffice-fresh libreoffice-fresh-en-gb libreoffice-fresh-fr libreoffice-fresh-pl handbrake kdenlive 

#enable sddm
sudo systemctl enable sddm

#sddm login settings
#select keyboard en=english (QWERTY) fr=french (AZERTY)
sudo echo setxkbmap "?" >> /usr/share/sddm/scripts/Xsetup
sudo cp sddm.conf /etc/sddm.conf

#set up printer
sudo chmod +x printer-setup.sh
sudo ./printer-setup.sh

#add users
sudo chmod +x setup-users.sh
sudo ./setup-users.sh

#set up home directories
sudo chmod +x home-directories.sh
sudo ./home-directories.sh

#install yay
sudo chown rich:rich /a
sudo chown rich:rich /a/kde-setup/yay-install.sh
cd /a/kde-setup
sudo chmod +x yay-install.sh
./yay-install.sh



