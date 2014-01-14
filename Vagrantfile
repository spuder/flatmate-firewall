# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  #config.vm.box = "PuppetlabsCent64"
  #config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-64-x64-vbox4210-nocm.box"
  # config.vm.box = "Debian-7-2"
  # config.vm.box_url= "https://dl.dropboxusercontent.com/u/197673519/debian-7.2.0.box"
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
       router.vm.box = "Ubuntu12-4-puppetlabs"
       #config.vm.network :public_network
       router.vm.network :private_network, ip: "192.168.45.11"
       #config.ssh.host "192.168.45.11"
       #router.vm.network :forwarded_port, host: "192.168.45.11"
       router.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-12042-x64-vbox4210.box"
       #config.vm.network :forwarded_port, host_ip: "192.168.45.11"
       #router.vm.network :forwarded_port, host_ip: "192.168.45.11"
       router.vm.network "forwarded_port", guest: 3000, host: 8080

     end

     config.vm.define "r1" do |roomate1|
       roomate1.vm.network :private_network, ip: "192.168.45.12"
       roomate1.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-12042-x64-vbox4210.box"

       #config.ssh.host "192.168.45.12"
     end

     config.vm.define "r2" do |roomate2|
       roomate2.vm.network :private_network, ip: "192.168.45.12"
       roomate2.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-12042-x64-vbox4210.box"
       #config.ssh.host "192.168.45.13"
     end

#Turn off the nat devices http://bit.ly/1cNUfwg
#https://github.com/mitchellh/vagrant/issues/2298
   # config.vm.provider :virtualbox do |vb|
   #   vb.customize "post-boot",["controlvm", :id, "setlinkstate1", "off"]
   # end

end
