# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "debian8"
  config.vm.provision "shell", path: "provision.sh"
  config.vm.network :forwarded_port, :host => 8081, :guest => 8081
end
