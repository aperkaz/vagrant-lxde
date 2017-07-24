Vagrant.configure("2") do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "janihur/ubuntu-1604-lxde-desktop"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  
  # npm dev process
  # config.vm.network "forwarded_port", guest: 3000, host: 3333
  # react storybook
  #config.vm.network "forwarded_port", guest: 6006, host: 6666

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. 
  
   config.vm.provider "virtualbox" do |vb|
     # Display the VirtualBox GUI when booting the machine
     vb.gui = true
  
     # Customize the amount of memory on the VM:
     vb.memory = "6000"
   end
  
  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available.  
  config.vm.provision "shell", inline: <<-SHELL

	# color initialization
	GREEN='\033[0;32m'
	NC='\033[0m' # No Color
  
	# update repositories
	sudo apt-get update

	# install [TERMINATOR](https://wiki.archlinux.org/index.php/Terminator)
	echo "\n${GREEN}Installing TERMINATOR ${NC}"
	yes Y | sudo apt-get install terminator
	
	# install [SHUTTER](http://shutter-project.org/)
	echo "\n${GREEN}Installing SHUTTER ${NC}"
	add shutter PPA
	sudo add-apt-repository ppa:shutter/ppa
	sudo apt-get update 
	yes Y | sudo apt-get install shutter
	
	# install [KUPFER](https://github.com/kupferlauncher/kupfer)
	echo "\n${GREEN}Installing KUPFER ${NC}"
	sudo add-apt-repository ppa:kupfer-team/ppa 
	sudo apt-get update 
	yes Y | sudo apt-get install kupfer 
		
	# install [CHROME]
	echo "\n${GREEN}Installing CHROME ${NC}"
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
	sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
	sudo apt-get update 
	yes Y | sudo apt-get install google-chrome-stable
		
	# install [GIT-COLA](https://git-cola.github.io/)
	echo "\n${GREEN}Installing GIT-COLA ${NC}"	
	yes Y | sudo apt-get install git-cola
		
	# install [VOKOSCREEN](https://github.com/vkohaupt/vokoscreen)	
	echo "\n${GREEN}Installing VOKOSCREEN ${NC}"
	sudo add-apt-repository ppa:vokoscreen-dev/vokoscreen
	sudo apt-get update
	yes Y | sudo apt-get install vokoscreen

	# install [NVM]()
	echo "\n${GREEN}Installing NVM TODO ${NC}"
	# sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
	
	# install [MELD]()
	echo "\n${GREEN}Installing MELD TODO ${NC}"

	# install [ATOM]()
	echo "\n${GREEN}Installing ATOM TODO ${NC}"
	echo "\n${GREEN}Installing ATOM-PACKAGES TODO ${NC}"
	
		
  SHELL

end
