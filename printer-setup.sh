#!/bin/sh


# set up printer Arch

#install packages
sudo pacman -Sy cup cups-pdf --noconfirm --needed
sudo pacman -S usbutils ghostscript gsfonts --noconfirm --needed
sudo pacman -S foomatic foomatic-db-engine fomatic-db foomatic-db-ppds --noconfirm --needed
sudo pacman -S avahi --noconfirm --needed
sudo pacman -S print-manager --noconfirm --needed

#disable systemd resolved
sudo systemctl stop systemd-resolved.service
sudo systemctl disable systemd-resolved.service
sudo systemctl stop systemd-resolved.socket
sudo systemctl disable systemd-resolved.socket

#start/enable avahi and cups
sudo sysemctl start cups.service
sudo sysemctl start avahi-daemon.service
sudo sysemctl start avahi-daemon.socket
sudo sysemctl enable avahi-daemon.socket
sudo sysemctl enable avahi-daemon.service
sudo sysemctl enable cups.service

#edit nsswitch.conf
sudo cp nsswitch.conf /etc/nsswitch.conf

#restart cups
sudo systemctl restart cups.service
