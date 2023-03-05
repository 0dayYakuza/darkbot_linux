#!/bin/bash

if [ -f /etc/os-release ]; then
    . /etc/os-release
    ID=$ID
fi

if [ $ID = ubuntu ]; then
sudo apt update -y && sudo apt upgrade -y && sudo apt install openjdk-17-jre openjdk-17-jdk -y
sudo apt install libfuse2 -y
cd $HOME/Downloads && wget https://host.darkbot.eu/uploads/Tanoshii/darkbot.zip && unzip darkbot.zip
sudo rm -r ~/Downloads/darkbot_linux-main ~/Downloads/main.zip ~/Downloads/darkbot.zip && sudo apt autoremove -y

elif [ $ID = linuxmint ] || [ $ID = debian ]; then
sudo apt update -y && sudo apt upgrade -y && sudo apt install openjdk-17-jre openjdk-17-jdk -y
cd $HOME/Downloads && wget https://host.darkbot.eu/uploads/Tanoshii/darkbot.zip && unzip darkbot.zip
sudo rm -r ~/Downloads/darkbot_linux-main ~/Downloads/main.zip ~/Downloads/darkbot.zip && sudo apt autoremove -y

elif [ $ID = almalinux ] || [ $ID = centos ] || [ $ID = fedora ] || [ $ID = rocky ]; then
sudo dnf update -y && sudo dnf upgrade -y && sudo dnf install java-17-openjdk java-17-openjdk-devel -y
cd $HOME/Downloads && wget https://host.darkbot.eu/uploads/Tanoshii/darkbot.zip && unzip darkbot.zip
sudo rm -r ~/Downloads/darkbot_linux-main ~/Downloads/main.zip ~/Downloads/darkbot.zip && sudo dnf autoremove -y

else
echo "Operating system not identified"
echo "Please contact devs in #linux-chat"
fi