#!/bin/sh

#choose desktop select 1
#sudo chmod +x plasma.sh && ./plasma.sh
#sudo chmod +x i3.sh && ./i3.sh

#install audio & DVD packages
sudo pacman -S alsa-utils alsa-firmware pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-equalizer pulseaudio-jack vlc mplayer rhytmbox libcdio audiocd-kio lidvdread libdvdcss libdvdnav --noconfirm --needed

#Install apps
sudo pacman -S gimp blender libreoffice-fresh libreoffice-fresh-en-gb libreoffice-fresh-fr libreoffice-fresh-pl handbrake kdenlive 



#set up printer
sudo chmod +x printer-setup.sh
sudo ./printer-setup.sh

#add users
sudo chmod +x setup-users.sh
sudo ./setup-users.sh

#set up home directories
sudo chmod +x home-directories.sh
sudo ./home-directories.sh

#run clean-up
cd /a/kde-setup
sudo chmod +x clean-up.sh
sudo ./clean-up.sh

