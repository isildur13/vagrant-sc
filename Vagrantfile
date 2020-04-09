Vagrant.configure("2") do |config|

config.vm.define "devgoboi" do |devgoboi|
 devgoboi.vm.box = "ubuntu/bionic64"
 devgoboi.vm.hostname = "devgoboi"
 devgoboi.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.11"
 devgoboi.vm.provision "shell", path: "basic-provision.sh"
end

config.vm.define "testgoboi" do |testgoboi|
 testgoboi.vm.box = "ubuntu/bionic64"
 testgoboi.vm.hostname = "testgoboi"
 testgoboi.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.12"
 testgoboi.vm.provision "shell", path: "basic-provision.sh"
end

config.vm.define "stagegoboi" do |stagegoboi|
 stagegoboi.vm.box = "ubuntu/bionic64"
 stagegoboi.vm.hostname = "stagegoboi"
 stagegoboi.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.13"
 stagegoboi.vm.provision "shell", path: "basic-provision.sh"
end

config.vm.define "prodgoboi" do |prodgoboi|
 prodgoboi.vm.box = "ubuntu/bionic64"
 prodgoboi.vm.hostname = "prodgoboi"
 prodgoboi.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.14"
 prodgoboi.vm.provision "shell", path: "basic-provision.sh"
end


end


