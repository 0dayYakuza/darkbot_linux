#!/bin/bash

if [ -f /etc/os-release ]; then
    . /etc/os-release
    ID=$ID
fi

if [ $ID = ubuntu ]; then
sudo apt update -y && sudo apt upgrade -y
sudo apt install ubuntu-desktop -y && sudo apt install xrdp -y && sudo apt install ufw -y
ufw allow 3389 && systemctl restart xrdp && ufw reload
sudo apt install openjdk-17-jre openjdk-17-jdk -y && sudo apt install libfuse2 -y
cd $HOME/Downloads && wget https://host.darkbot.eu/uploads/Tanoshii/darkbot.zip && unzip darkbot.zip
sudo rm -r ~/Downloads/darkbot_linux-main ~/Downloads/main.zip ~/Downloads/darkbot.zip && sudo apt autoremove -y

elif [ $ID = linuxmint ]; then
sudo apt update -y && sudo apt upgrade -y && sudo apt install kde-plasma-desktop -y
sudo apt install openjdk-17-jre openjdk-17-jdk -y && sudo apt install xrdp -y
systemctl enable xrdp && ufw allow 3389 && ufw reload
cd $HOME/Downloads && wget https://host.darkbot.eu/uploads/Tanoshii/darkbot.zip && unzip darkbot.zip
sudo rm -r ~/Downloads/darkbot_linux-main ~/Downloads/main.zip ~/Downloads/darkbot.zip && sudo apt autoremove -y

elif [ $ID = almalinux ] || [ $ID = centos ] || [ $ID = rocky ]; then
sudo dnf update -y && sudo dnf upgrade -y && sudo dnf groupinstall "Server with GUI" -y
sudo dnf install epel-release -y && sudo dnf install xrdp -y && systemctl enable xrdp --now
systemctl start firewalld && firewall-cmd --add-port=3389/tcp --permanent && firewall-cmd --reload
sudo dnf install java-17-openjdk java-17-openjdk-devel -y
cd $HOME/Downloads && wget https://host.darkbot.eu/uploads/Tanoshii/darkbot.zip && unzip darkbot.zip
sudo rm -r ~/Downloads/darkbot_linux-main ~/Downloads/main.zip ~/Downloads/darkbot.zip && sudo dnf autoremove -y

elif [ $ID = fedora ]; then
sudo dnf update -y && sudo dnf upgrade -y && sudo dnf groupinstall "LXDE Desktop" -y
sudo dnf install xrdp -y && systemctl enable xrdp --now
systemctl start firewalld && firewall-cmd --add-port=3389/tcp --permanent && firewall-cmd --reload
sudo dnf install java-17-openjdk java-17-openjdk-devel -y
cd $HOME/Downloads && wget https://host.darkbot.eu/uploads/Tanoshii/darkbot.zip && unzip darkbot.zip
sudo rm -r ~/Downloads/darkbot_linux-main ~/Downloads/main.zip ~/Downloads/darkbot.zip && sudo dnf autoremove -y

elif [ $ID = debian ]; then
sudo apt update -y && apt upgrade -y && sudo apt install xrdp ufw -y && sudo adduser xrdp ssl-cert
sudo apt install cinnamon -y && sudo apt install openjdk-17-jdk openjdk-17-jre -y
ufw --now enable && ufw allow 3389 && ufw reload && systemctl restart xrdp
cd $HOME/Downloads && wget https://host.darkbot.eu/uploads/Tanoshii/darkbot.zip && unzip darkbot.zip
sudo rm -r ~/Downloads/darkbot_linux-main ~/Downloads/main.zip ~/Downloads/darkbot.zip && sudo apt autoremove -y

else
echo "Operating system not identified"
echo "Please contact devs in #linux-chat"
fi