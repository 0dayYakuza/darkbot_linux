# How to install & run DarkBot in Linux?

## If you want to install & run DarkBot
**1. on your own PC, then:**
- create a new user (don't use "root");
- copy & paste this command in terminal
```bash
curl https://raw.githubusercontent.com/0dayYakuza/darkbot_linux/main/install_desktop.sh | bash
```

**2. on VPS, then:**
- download PuTTy or any similar app and connect to VPS;
```bash
- Putty Link: https://www.putty.org/
```
- create a new user (don't use "root");
- copy & paste this command in terminal;
```bash
 curl https://raw.githubusercontent.com/0dayYakuza/darkbot_linux/main/install_vps.sh | bash
 ```
- When the installation is completed, close terminal and connect to VPS via Remote Desktop Connection (RDP).

**3. To run darkbot, type command in terminal:**
```bash
cd Downloads/darkbot && java -jar DarkBot.jar
```
---
# Troubleshooting
1. If the bot asks for verification, open your browser manually, navigate to http://localhost:55230/ and authorize your discord account.
2. If the API fails to load, set API to tanos_api in the bot settings or delete config files from the bot folder and then try again.
3. unknown command wget
- sudo yum install wget -y
4. unknown command unzip
- sudo yum install uzip -y
5. AppImages require FUSE to run.
- sudo apt install fuse -y && sudo apt install libfuse2 -y
6. cURL not found/installed
- sudo apt install curl -y
# FAQ
install_desktop.sh is:
- updating system & installing java 17;
- downloading darkbot.zip & unzipping all files & deleting archives.

install_vps.sh is:
- updating system & installing java 17;
- installing & configuring GUI and xRDP;
- downloading darkbot.zip & unzipping all files & deleting archives.

Supported distributions:
- Alma Linux 9
- CentOS Stream 9
- Fedora 37
- Rocky Linux 9
- Ubuntu 22.04
- Linux Mint
- Debian 11
- Arch Linux
- Manjaro OS
- SteamOS