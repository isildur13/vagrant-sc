#!/bin/bash

cd /root/
rm $(ls | grep "go")
wget https://raw.githubusercontent.com/panchalyash13/bash-sc/go-install/go-install.sh
chmod 777 go-install.sh
./go-install.sh 1.14.1 linux amd64
