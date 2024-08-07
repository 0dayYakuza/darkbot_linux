# How to install & run DarkBot in Linux?

## If you want to install & run DarkBot
**1. on your own PC, then:**
- create a new user (scroll down, there's a link to guide);
- copy & paste this command in terminal
```bash
curl https://raw.githubusercontent.com/0dayYakuza/darkbot_linux/main/install_desktop.sh | bash
```

**2. on VPS, then:**
- download PuTTy or any similar app and connect to VPS;

    https://www.putty.org/

- create a new user (scroll down, there's a link to guide);
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
- Ubuntu 20.04 - 23.10
- Fedora 36 - 37
- Alma Linux 8 - 9
- CentOS Stream 8 - 9
- Rocky Linux 8 -9
- Debian 10 - 12
- Pop_OS!
- Linux Mint
- Arch Linux
- Manjaro OS
- SteamOS
- Elementary OS

How to create a new non-root user?
- Please read guide here: https://averagelinuxuser.com/creating-new-user-linux/