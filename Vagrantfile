Vagrant.configure("2") do |config|
  config.vm.box = "janihur/ubuntu-1604-lxde-desktop"

   config.vm.provider "virtualbox" do |vb|

     vb.name = "Front-End LXDE Hero"

     vb.gui = true

     vb.memory = "6000"

     vb.cpus = 2
   end

  config.vm.provision :shell, :path => "provision.sh"

end
