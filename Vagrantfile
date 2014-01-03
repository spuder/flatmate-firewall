# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "PuppetlabsCent64"
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-64-x64-vbox4210-nocm.box"
  
  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network :private_network, ip: "192.168.45.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network :public_network

   config.vm.synced_folder ".", "/vagrant_data"

   config.vm.provider :virtualbox do |vb|
     vb.customize ["modifyvm", :id, "--memory", "512"]
   end


   config.vm.define "r", primary: true  do |router|
     router.vm.box = "PuppetlabsCent64"
   end

   config.vm.define "r1" do |roomate1|
     roomate1.vm.box = "PuppetlabsCent64"
   end


   config.vm.define "r2" do |roomate2|
     roomate2.vm.box = "PuppetlabsCent64"
   end

end
