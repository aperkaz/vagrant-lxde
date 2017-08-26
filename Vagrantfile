Vagrant.configure("2") do |config|
  config.vm.box = "janihur/ubuntu-1604-lxde-desktop"

   config.vm.provider "virtualbox" do |vb|
     # set custom name
     vb.name = "Front-End LXDE Hero"

     # Display the VirtualBox GUI when booting the machine
     vb.gui = true

     # Customize the amount of memory on the VM:
     vb.memory = "6000"

     # Customize the amount cpus in the VM:
     vb.cpus = 2
   end

  config.vm.provision :shell, :path => "provision.sh"

end
