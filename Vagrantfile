Vagrant.configure("2") do |config|

config.vm.define "dev-goboi" do |dev-goboi|
 dev-goboi.vm.box = "ubuntu/bionic64"
 dev-goboi.vm.hostname = "dev-goboi"
 dev-goboi.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.11"
 dev-goboi.vm.provision "shell", path: "basic-provision.sh"
end

config.vm.define "test-goboi" do |test-goboi|
 test-goboi.vm.box = "ubuntu/bionic64"
 test-goboi.vm.hostname = "test-goboi"
 test-goboi.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.12"
 test-goboi.vm.provision "shell", path: "basic-provision.sh"
end

config.vm.define "stage-goboi" do |stage-goboi|
 stage-goboi.vm.box = "ubuntu/bionic64"
 stage-goboi.vm.hostname = "stage-goboi"
 stage-goboi.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.13"
 stage-goboi.vm.provision "shell", path: "basic-provision.sh"
end

config.vm.define "prod-goboi" do |prod-goboi|
 prod-goboi.vm.box = "ubuntu/bionic64"
 prod-goboi.vm.hostname = "prod-goboi"
 prod-goboi.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.14"
 prod-goboi.vm.provision "shell", path: "basic-provision.sh"
end


end


