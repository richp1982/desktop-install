#!/bin/sh



#home directories
sudo rm -r /home/edyta
sudo rm -r /home/rich/*
sudo rm -r /home/kiwi
sudo mkdir /home/{edyta,kiwi}
sudo ln -s /data/shared/* /home/rich/
sudo ln -s /data/shared/* /home/edyta/
sudo ln -s /data/shared/* /home/kiwi/
sudo ln -s /data/users/rich/* /home/rich/
sudo ln -s /data/users/edyta/* /home/edyta/
sudo ln -s /data/users/kiwi/* /home/kiwi/
