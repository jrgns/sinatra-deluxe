# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'ubuntu1404'
  config.vm.box_url = 'https://vagrantcloud.com/ubuntu/boxes/trusty64/versions/14.04/providers/virtualbox.box'
  config.vm.network :private_network, type: :dhcp
  config.vm.network "forwarded_port", guest: 9292, host: 9292

  config.vm.provision :shell, path: 'scripts/provision.sh'
end
