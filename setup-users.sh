#!/bin/sh

#set up additional users arch

#create new users
sudo useradd -m -G sys,floppy,scanner,cups,users,video,storage,optical,lp,disk,audio,adm edyta
sudo useradd -m -G sys,floppy,scanner,cups,users,video,storage,optical,lp,disk,audio,adm kiwi

#set passwords
sudo passwd edyta
sudo passwd kiwi
