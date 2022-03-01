#!/bin/sh

#install plasma desktop
sudo pacman -S xorg sddm plasma-desktop --noconfirm --needed

#install optional packages
sudo pacman -S ibus kaccounts-intergration kscreen packagekit-qt5 plasma-nm powerdevil scim breeze breeze-gtk kde-gtk-config kinfocenter kate konsole kwallet kwallet-pam oxygen sddm-kcm breeze-grub kdecoration kscreenlocker ksystemstats kwin libkscreen libksysguard plasma-disks plasma-systemmonitor plasma-workspace plasma-workspace-wallpapers polkit-kde-agent systmsettings xdg-desktop-portal-kde kmix bluedevil kde-cli-tools gparted timeshift firefox  xf86-input-synaptics kdegraphics-thumbnailers ffmpegthumbs colord-kde ttf-dejavu ttf-liberation dolphin --noconfirm --needed

#install audio packages
sudo pacman -S alsa-utils alsa-firmware pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-equalizer pulseaudio-jack vlc mplayer rhytmbox --noconfirm --needed


#enable sddm
sudo systemctl enable sddm

#sddm login settings
sudo cp sddm.conf /etc/sddm.conf
sudo cp Xsetup /usr/share/sddm/scripts/Xsetup

#set up printer
sudo chmod +x printer-setup.sh
sudo ./printer-setup.sh

#add users
sudo chmod +x setup-users.sh
sudo ./setup-users.sh

#set up home directories
sudo chmod +x home-directories.sh
sudo ./home-directories.sh

#set swappiness
sudo echo 'vm.swappiness=10' >> /etc/sysctl.d/99-swappiness.conf

#install yay

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si


