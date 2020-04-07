#!/bin/bash 

echo -e "root\nroot" | passwd root 
echo -en "\n\n" | ssh-keygen 
apt install ssh -y
sed -i -e 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' -e 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' -e 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
cat /etc/ssh/sshd_config
echo "------------______RESTARTING SSHD_____--------------"
systemctl restart sshd ssh
apt-get update 
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
wget -o java.tar.gz https://javadl.oracle.com/webapps/download/AutoDL?xd_co_f=OTA2MTE0MzctMTVkOS00MDYzLWFkNmUtM2JkNTI1MjMxYzlj&BundleId=241526_1f5b5a70bf22433b84d0e960903adac8
apt update
apt install openjdk-8-jdk -y
apt install jenkins -y
systemctl start jenkins
systemctl status jenkins
ufw allow 8080
sleep 2m
cat /var/lib/jenkins/secrets/initialAdminPassword
apt install python -y
apt install ansible -y
timedatectl set-ntp true
systemctl status systemd-timesyncd

