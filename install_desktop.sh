#!/bin/bash

if [ -f /etc/os-release ]; then
    . /etc/os-release
    ID=$ID
fi

if [ $ID = ubuntu ]; then
sudo apt update -y && sudo apt upgrade -y
sudo apt install openjdk-17-jre openjdk-17-jdk -y && sudo apt install libfuse2 -y
wget -P ~/Downloads https://host.darkbot.eu/uploads/Tanoshii/darkbot.zip
cd $HOME/Downloads && unzip darkbot.zip
sudo rm -r ~/Downloads/darkbot_linux-main ~/Downloads/main.zip ~/Downloads/darkbot.zip  && sudo apt autoremove -y

elif [ $ID = linuxmint ]; then
sudo apt update -y && sudo apt upgrade -y
sudo apt install openjdk-17-jre openjdk-17-jdk -y
wget -P ~/Downloads https://host.darkbot.eu/uploads/Tanoshii/darkbot.zip
cd $HOME/Downloads && unzip darkbot.zip
sudo rm -r ~/Downloads/darkbot_linux-main ~/Downloads/main.zip ~/Downloads/darkbot.zip  && sudo apt autoremove -y

elif [ $ID = almalinux ] || [ $ID = centos ] || [ $ID = fedora ] || [ $ID = rocky ]; then
sudo dnf update -y && sudo dnf upgrade -y
sudo dnf install java-17-openjdk java-17-openjdk-devel -y
wget -P ~/Downloads https://host.darkbot.eu/uploads/Tanoshii/darkbot.zip
cd $HOME/Downloads && unzip darkbot.zip
sudo rm -r ~/Downloads/darkbot_linux-main ~/Downloads/main.zip ~/Downloads/darkbot.zip && sudo dnf autoremove -y

elif [ $ID = debian ]; then
sudo apt update -y && sudo apt upgrade -y && sudo apt install openjdk-17-jdk openjdk-17-jre -y
wget -P ~/Downloads https://host.darkbot.eu/uploads/Tanoshii/darkbot.zip
cd $HOME/Downloads && unzip darkbot.zip
sudo rm -r ~/Downloads/darkbot_linux-main ~/Downloads/main.zip ~/Downloads/darkbot.zip && sudo apt autoremove -y

else
echo "Operating system not identified"
fi