#!/bin/bash

echo -e "root\nroot" | passwd root
echo -en "\n\n" | ssh-keygen
apt install ssh -y
sed -i -e 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' -e 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' -e 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
cat /etc/ssh/sshd_config
echo "------------______RESTARTING SSHD_____--------------"
systemctl restart sshd ssh
apt-get update
timedatectl set-ntp true
systemctl status systemd-timesyncd
apt install python -y
apt install openjdk-8-jre-headless -y
apt install openjdk-8-jdk -y
cd /root/
wget https://raw.githubusercontent.com/panchalyash13/bash-sc/go-install/go-install.sh
chmod 777 go-install.sh
./go-install.sh 1.14.1 linux amd64
