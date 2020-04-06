#!/bin/bash

echo -e "root\nroot" | passwd root
echo -en "\n\n" | ssh-keygen
apt install ssh -y
sed -i -e 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' -e 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' -e 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
cat /etc/ssh/sshd_config
echo "------------______RESTARTING SSHD_____--------------"
systemctl restart sshd ssh
apt-get update
apt install python -y

wget https://dl.google.com/go/go1.14.1.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.14.1.linux-amd64.tar.gz

cd /bin 
ln -s /usr/local/go/bin/go go

apt install openjdk-8-jre-headless -y
apt install openjdk-8-jdk -y

cat > jenkinsagent.service <<- "EOF"

[Unit]
Description=Jenkinsagent

[Service]
Type=forking
ExecStart=/etc/jenkinsagent/jenkinsagent.sh

[Install]
WantedBy=multi-user.target

EOF

mv jenkinsagent.service /etc/systemd/system/
mkdir /etc/jenkinsagent
touch /etc/jenkinsagent/jenkinsagent.sh
chmod 777 /etc/jenkinsagent/jenkinsagent.sh
systemctl enable jenkinsagent
systemctl restart jenkinsagent

