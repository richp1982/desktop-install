#!/bin/sh

#set up additional users arch

#create new users
sudo useradd -m -G sys,floppy,scanner,users,video,storage,optical,lp,audio,adm edyta
sudo useradd -m -G sys,floppy,scanner,users,video,storage,optical,lp,audio,adm kiwi

#set passwords
sudo passwd edyta
sudo passwd kiwi
