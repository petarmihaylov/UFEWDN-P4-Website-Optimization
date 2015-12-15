# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Standard minimal Ubuntu box
  config.vm.box = "ubuntu/trusty64"

  # set auto_update to false, if do NOT want to check the correct additions
  # version when booting this machine
  config.vbguest.auto_update = false
  
  # Controls the memory and cpus of a box
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]
  end

  # Controls the memory and cpus of a box
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]
  end

  # Port 9000 is where grunt server is doing serving from
  config.vm.network :forwarded_port, guest: 9000, host: 9000
  # Port 35729 is required by LiveReload to reflect content chaenges
  config.vm.network :forwarded_port, guest: 35729, host: 35729

  # Add a custom project directory to separe the project files from the box setup`
  config.vm.synced_folder "project", "/home/vagrant/project"

  # Configure everything else ready to run Yeoman
  config.vm.provision "shell", path: "provision.sh"
end
