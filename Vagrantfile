Vagrant.configure("2") do |config|
  config.vm.box = "aaperkaz/frontend-lxde"

   config.vm.provider "virtualbox" do |vb|

     vb.name = "Front-End LXDE Hero"

     vb.gui = true

     vb.memory = "6000"

     vb.cpus = 2
   end

  # To fully provision as the BOX
  # config.vm.provision :shell, :path => "provision.sh"

end
