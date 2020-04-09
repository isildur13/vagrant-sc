Vagrant.configure("2") do |config|

config.vm.define "devbutters" do |devbutters|
 devbutters.vm.box = "ubuntu/bionic64"
 devbutters.vm.hostname = "devbutters"
 devbutters.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.11"
 devbutters.vm.provision "shell", path: "basic-provision.sh"
end

config.vm.define "testbutters" do |testbutters|
 testbutters.vm.box = "ubuntu/bionic64"
 testbutters.vm.hostname = "testbutters"
 testbutters.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.12"
 testbutters.vm.provision "shell", path: "basic-provision.sh"
end

config.vm.define "stagebutters" do |stagebutters|
 stagebutters.vm.box = "ubuntu/bionic64"
 stagebutters.vm.hostname = "stagebutters"
 stagebutters.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.13"
 stagebutters.vm.provision "shell", path: "basic-provision.sh"
end

config.vm.define "prodbutters" do |prodbutters|
 prodbutters.vm.box = "ubuntu/bionic64"
 prodbutters.vm.hostname = "prodbutters"
 prodbutters.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.14"
 prodbutters.vm.provision "shell", path: "basic-provision.sh"
end


end


