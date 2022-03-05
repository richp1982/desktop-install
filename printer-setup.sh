#!/bin/sh


# set up printer Arch

#install packages
sudo pacman -Sy cups cups-pdf --noconfirm --needed
sudo pacman -S usbutils ghostscript gsfonts --noconfirm --needed
sudo pacman -S foomatic-db-engine foomatic-db foomatic-db-ppds foomatic-db-nonfree foomatic-db-nonfree-ppds gutenprint foomatic-db-gutenprint-ppds --noconfirm --needed
sudo pacman -S avahi --noconfirm --needed
sudo pacman -S print-manager --noconfirm --needed

#disable systemd resolved
sudo systemctl stop systemd-resolved.service
sudo systemctl disable systemd-resolved.service
sudo systemctl stop systemd-resolved.socket
sudo systemctl disable systemd-resolved.socket

#start/enable avahi and cups
sudo systemctl start cups.service
sudo systemctl start avahi-daemon.service
sudo systemctl start avahi-daemon.socket
sudo systemctl enable avahi-daemon.socket
sudo systemctl enable avahi-daemon.service
sudo systemctl enable cups.service

#edit nsswitch.conf
sudo cp nsswitch.conf /etc/nsswitch.conf

#restart cups
sudo systemctl restart cups.service
