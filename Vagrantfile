Vagrant.configure("2") do |config|

config.vm.define "experiment" do |experiment|
 experiment.vm.box = "ubuntu/bionic64"
 experiment.vm.hostname = "dev-butters"
 experiment.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.99"
 experiment.vm.provision "shell", path: "basic-provision.sh"
end

end


