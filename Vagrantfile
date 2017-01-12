Vagrant.configure("2") do |config|
  config.vm.box = "boxcutter/ubuntu1604-desktop"
  config.vm.provision "shell", path: "provision.sh"
  config.vm.provider "virtualbox" do |v|
    v.memory = 8192
    v.cpus = 4
    v.customize ["modifyvm", :id, "--accelerate3d", "off"]
    v.customize ["setextradata", :id, "GUI/Fullscreen", "on"]
  end
end
