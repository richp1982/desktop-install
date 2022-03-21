#!/bin/sh

#choose desktop select 1
#sudo chmod +x plasma.sh && ./plasma.sh
#sudo chmod +x i3.sh && ./i3.sh

#install audio & DVD packages
sudo chmod +x audio.sh && ./audio.sh

#enable bluetooth
#sudo pacman -S bluez bluez-utils pulseaudio-bluetooth --no-confirm --needed && sudo systemctl start bluetooth.service

#Install apps
#sudo pacman -S gimp blender libreoffice-fresh libreoffice-fresh-en-gb libreoffice-fresh-fr libreoffice-fresh-pl handbrake kdenlive 

#set up printer
#sudo chmod +x printer-setup.sh && sudo ./printer-setup.sh

#add users
#sudo chmod +x setup-users.sh && sudo ./setup-users.sh

#set up home directories
#sudo chmod +x home-directories.sh && sudo ./home-directories.sh
