#!/bin/bash

jenkinsvm=$(VBoxManage list vms | grep "jenkins" | awk '{print$1}' | sed 's/"//g')
devvm=$(VBoxManage list vms | grep "dev" | awk '{print$1}' | sed 's/"//g')
testvm=$(VBoxManage list vms | grep "test" | awk '{print$1}' | sed 's/"//g')
VM=$(echo $jenkinsvm $devvm $testvm)


if [[ $1 == "start" ]]
then
	for vms in $VM
	do
	echo "$vms Starting"
	vboxmanage startvm $vms --type headless
	done

elif [[ $1 == "stop"  ]]
then
        for vms in $VM
        do
        echo "$vms Stoping"
        vboxmanage controlvm $vms poweroff
        done


else
    
	exit 1

fi









