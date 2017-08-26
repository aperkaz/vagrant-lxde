Vagrant.configure("2") do |config|  
  # config.vm.box = "janihur/ubuntu-1604-lxde-desktop"
  config.vm.box = "ubuntu/trusty64"

   config.vm.provider "virtualbox" do |vb|
     # Display the VirtualBox GUI when booting the machine
     vb.gui = true

     # Customize the amount of memory on the VM:
     vb.memory = "6000"
   end

  config.vm.provision :shell, :path => "provision.sh"

end
