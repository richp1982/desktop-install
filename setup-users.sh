#!/bin/sh

#set up additional users

#create new users
sudo useradd -G scanner,users,video,storage,optical,lp,audio edyta
sudo useradd -G scanner,users,video,storage,optical,lp,audio kiwi

#set passwords
echo 'enter password for edyta'
sudo passwd edyta
echo 'enter password for kiwi'
sudo passwd kiwi

sudo chown edyta:edyta /home/edyta
sudo chown kiwi:kiwi /home/kiwi
sudo chown rich:users /data
sudo chmod g+rwxs /data
sudo chown -R rich:users /data/shared
sudo chmod g+rwxs /data/shared
sudo chown rich:rich /data/users/rich
sudo chown kiwi:kiwi /data/users/kiwi
sudo chown edyta:edyta /data/users/edyta
