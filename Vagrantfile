Vagrant.configure("2") do |config|


connfig.vm.define "jenkins" do |jenkins|

	jenkins.vm.box = "ubuntu/bionic64"
	jenkins.vm.define  "Jenkins-Master"
	jenkins.vm.hostname = "Jenkins-Master"
	jenkins.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.66"
	jenkins.vm.provision "shell", path: "jenkins-provision.sh"
	
end


end
