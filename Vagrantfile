Vagrant.configure("2") do |dev|

 dev.vm.box = "ubuntu/bionic64"
 dev.vm.define "dev-butters"
 dev.vm.hostname = "dev-butters"
 dev.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.11"

end


Vagrant.configure("2") do |stage|

 stage.vm.box = "ubuntu/bionic64"
 stage.vm.define "stage-butters"
 stage.vm.hostname = "stage-butters"
 stage.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.13"

end


Vagrant.configure("2") do |test|

 test.vm.box = "ubuntu/bionic64"
 test.vm.define "test-butters"
 test.vm.hostname = "test-butters"
 test.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.12"

end


Vagrant.configure("2") do |prod|

 prod.vm.box = "ubuntu/bionic64"
 prod.vm.define "prod-butters"
 prod.vm.hostname = "prod-butters"
 prod.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.14"

end
