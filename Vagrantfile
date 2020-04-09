Vagrant.configure("2") do |config|

config.vm.define "dev-butters" do |dev-butters|
 dev-butters.vm.box = "ubuntu/bionic64"
 dev-butters.vm.hostname = "dev-butters"
 dev-butters.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.11"
 dev-butters.vm.provision "shell", path: "basic-provision.sh"
end

config.vm.define "test" do |test|
 test.vm.box = "ubuntu/bionic64"
 test.vm.hostname = "test-butters"
 test.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.12"
 test.vm.provision "shell", path: "basic-provision.sh"
end

config.vm.define "stage-butters" do |stage-butters|
 stage-butters.vm.box = "ubuntu/bionic64"
 stage-butters.vm.hostname = "stage-butters"
 stage-butters.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.13"
 stage-butters.vm.provision "shell", path: "basic-provision.sh"
end

config.vm.define "prod-butters" do |prod-butters|
 prod-butters.vm.box = "ubuntu/bionic64"
 prod-butters.vm.hostname = "prod-butters"
 prod-butters.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.14"
 prod-butters.vm.provision "shell", path: "basic-provision.sh"
end


end


