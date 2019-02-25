
Vagrant.configure("2") do |config|
  config.vm.define "client" do |vm1|
    vm1.vm.hostname = "client"
    vm1.vm.box = "bento/ubuntu-16.04"
    config.vm.network "forwarded_port", guest: 8080, host: 9000
    vm1.vm.network "private_network", ip: "192.168.33.10"
    config.vm.synced_folder ".", "/home/vagrant/multipleVM"

    vm1.vm.provider "virtualbox" do |vb|
      vb.name = "client"
      vb.gui = true
      vb.memory = "1024"
    end

    # vm1.vm.provision "shell", run: "always", inline: <<-SHELL
    #   echo "Hello fom Ubuntu VM"
    # SHELL
    vm1.vm.provision "shell", path: "sh/bootstrap.sh"
  end

  config.vm.define "api" do |vm2|
    vm2.vm.hostname = "api"
    vm2.vm.box = "ubuntu/bionic64"
    config.vm.network "forwarded_port", guest: 8000, host: 5000
    vm2.vm.network "private_network", ip: "192.168.33.20"
    config.vm.synced_folder ".", "/home/vagrant/multipleVM"

    vm2.vm.provider "virtualbox" do |vb|
      vb.name = "api"
      vb.gui = true
      vb.memory = "1024"
    end

    # vm2.vm.provision "shell", run: "always", inline: <<-SHELL
    #   echo "Hello fom centos VM"
    # SHELL
    vm2.vm.provision "shell", path: "backend/bootstrap.sh"
  end
end
