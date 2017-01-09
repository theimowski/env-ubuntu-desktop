Vagrant.configure("2") do |config|
  config.vm.box = "boxcutter/ubuntu1604-desktop"
  config.vm.provision "shell", path: "provision.sh"
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 2
    v.customize ["modifyvm", :id, "--accelerate3d", "off"]
    v.customize ["setextradata", :id, "GUI/Fullscreen", "on"]
  end
end
