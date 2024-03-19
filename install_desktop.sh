#!/bin/bash

if [ -f /etc/os-release ]; then
    . /etc/os-release
    ID=$ID
fi

if [ $ID = ubuntu ] || [ $ID = pop ] || [ $ID = elementary ]; then
sudo apt update -y && sudo apt upgrade -y && sudo apt install openjdk-17-jre openjdk-17-jdk -y
sudo apt install libfuse2 -y
cd $HOME/Downloads && wget https://host.darkbot.eu/uploads/Tanoshii/darkbot.zip && unzip darkbot.zip && rm -r $HOME/Downloads/darkbot.zip

elif [ $ID = linuxmint ] || [ $ID = debian ]; then
sudo apt update -y && sudo apt upgrade -y && sudo apt install openjdk-17-jre openjdk-17-jdk -y
cd $HOME/Downloads && wget https://host.darkbot.eu/uploads/Tanoshii/darkbot.zip && unzip darkbot.zip && rm -r $HOME/Downloads/darkbot.zip

elif [ $ID = almalinux ] || [ $ID = centos ] || [ $ID = fedora ] || [ $ID = rocky ]; then
sudo dnf update -y && sudo dnf upgrade -y && sudo dnf install java-17-openjdk java-17-openjdk-devel -y
cd $HOME/Downloads && wget https://host.darkbot.eu/uploads/Tanoshii/darkbot.zip && unzip darkbot.zip && rm -r $HOME/Downloads/darkbot.zip

elif [ $ID = arch ] || [ $ID = manjaro ] || [ $ID = steamos ]; then
sudo pacman -Syu --noconfirm && sudo pacman -Syy --noconfirm && sudo pacman -S --noconfirm wget fuse2 jre17-openjdk 
cd $HOME/Downloads && wget https://host.darkbot.eu/uploads/Tanoshii/darkbot.zip && unzip darkbot.zip && rm -r $HOME/Downloads/darkbot.zip

else
echo "Operating system not identified"
echo "Please contact devs in #linux-chat"
echo "You can ping `0day` (moderator, contributor) for help"
fi
