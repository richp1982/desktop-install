#!/bin/sh



#home directories
sudo rm -r /home/edyta/*
sudo rm -r /home/rich/*
sudo rm -r /home/kiwi/*
sudo mkdir /home/{edyta,kiwi}
sudo ln -s /data/shared/* /home/rich/
sudo ln -s /data/shared/* /home/edyta/
sudo ln -s /data/shared/* /home/kiwi/
sudo ln -s /data/users/rich/* /home/rich/
sudo ln -s /data/users/edyta/* /home/edyta/
sudo ln -s /data/users/kiwi/* /home/kiwi/

#permissions
sudo chown rich:rich /home/rich
sudo chown edyta:edyta /home/edyta
sudo chown kiwi:kiwi /home/kiwi
sudo chown -R rich:users /data/shared
sudo chmod -R g+rwxs /data/shared
sudo chown -R rich:rich /data/users/rich
sudo chown -R edyta:edyta /data/users/edyta
sudo chown -R kiwi:kiwi /data/users/kiwi
