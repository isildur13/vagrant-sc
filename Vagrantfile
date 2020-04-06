Vagrant.configure("2") do |config|

config.vm.define "dev" do |dev|
 dev.vm.box = "ubuntu/bionic64"
 dev.vm.hostname = "dev-butters"
 dev.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.11"
 dev.vm.provision "shell", path: "basic-provision.sh"
end

config.vm.define "test" do |test|
 test.vm.box = "ubuntu/bionic64"
 test.vm.hostname = "test-butters"
 test.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.12"
 test.vm.provision "shell", path: "basic-provision.sh"
end

config.vm.define "stage" do |stage|
 stage.vm.box = "ubuntu/bionic64"
 stage.vm.hostname = "stage-butters"
 stage.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.13"
 stage.vm.provision "shell", path: "basic-provision.sh"
end

config.vm.define "prod" do |prod|
 prod.vm.box = "ubuntu/bionic64"
 prod.vm.hostname = "prod-butters"
 prod.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.14"
 prod.vm.provision "shell", path: "basic-provision.sh"
end


end


