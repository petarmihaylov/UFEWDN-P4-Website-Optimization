# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Standard minimal Ubuntu box
  config.vm.box = "ubuntu/trusty64"

  # Port 9000 is where grunt server is doing serving from
  config.vm.network :forwarded_port, guest: 9000, host: 9000
  # Port 35729 is required by LiveReload to reflect content changes
  config.vm.network :forwarded_port, guest: 35729, host: 35729

  # Change the standard project directory to be in the vagrant user's home direcotory
  config.vm.synced_folder "", "/home/vagrant/project"

  # Configure everything else ready to run Yeoman
  config.vm.provision "shell", path: "provision.sh"

end
