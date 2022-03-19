#!/bin/sh

#install packages
sudo pacman -S alsa-utils alsa-firmware pipewire pipewire-alsa pipewire-pulse --noconfirm --needed

#start pipewire-pulse.service
sudo systemctl start pipewire-pulse.service
sudo systemctl enable pipewire-pulse.service

#install codecs
sudo pacman -S libcdio libdvdread libdvdcss libdvdnav --noconfirm --needed

#install media players
sudo pacman -S vlc mplayer rhythmbox --noconfirm --needed

