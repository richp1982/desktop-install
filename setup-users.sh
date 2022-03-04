#!/bin/sh

#set up additional users arch

#create new users
sudo useradd -m -G sys,floppy,scanner,users,video,storage,optical,lp,audio,adm edyta
sudo useradd -m -G sys,floppy,scanner,users,video,storage,optical,lp,audio,adm kiwi

#set passwords
echo 'enter password for edyta'
sudo passwd edyta
echo 'enter password for kiwi'
sudo passwd kiwi
