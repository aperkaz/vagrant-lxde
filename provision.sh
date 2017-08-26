#!/bin/bash

# update repositories
{
  sudo apt-get update
} &> /dev/null

# install [TERMINATOR](https://wiki.archlinux.org/index.php/Terminator)
echo "Installing TERMINATOR"
{
  yes Y | sudo apt-get install terminator
} &> /dev/null

# install [KUPFER](https://github.com/kupferlauncher/kupfer)
echo "Installing KUPFER"
{
  sudo add-apt-repository ppa:kupfer-team/ppa
  sudo apt-get update
  yes Y | sudo apt-get install kupfer
} &> /dev/null

# install [CHROME]
echo "Installing CHROME"
{
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
  sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
  sudo apt-get update
  yes Y | sudo apt-get install google-chrome-stable
} &> /dev/null

# install [GIT-COLA](https://git-cola.github.io/)
echo "Installing GIT-COLA"
{
   yes Y | sudo apt-get install git-cola
} &> /dev/null

# install [MELD](http://meldmerge.org/)
echo "Installing MELD"
{
  yes Y | sudo apt-get install meld
} &> /dev/null

# install [VOKOSCREEN](https://github.com/vkohaupt/vokoscreen)
echo "Installing VOKOSCREEN"
{
  sudo add-apt-repository ppa:vokoscreen-dev/vokoscreen
  sudo apt-get update
  yes Y | sudo apt-get install vokoscreen
} &> /dev/null

# install [SHUTTER](http://shutter-project.org/)
echo "Installing SHUTTER"
{
  add shutter PPA
  sudo add-apt-repository ppa:shutter/ppa
  sudo apt-get update
  yes Y | sudo apt-get install shutter
} &> /dev/null

# install [ATOM](https://atom.io/)
echo "Installing ATOM"
{
  sudo add-apt-repository ppa:webupd8team/atom
  sudo apt update
  yes Y | sudo apt install atom
} &> /dev/null

# install [NVM](https://github.com/creationix/nvm)
echo "Installing NVM"
git clone https://github.com/creationix/nvm.git /home/vagrant/.nvm && cd /home/vagrant/.nvm && git checkout `git describe --abbrev=0 --tags`
source /home/vagrant/.nvm/nvm.sh
nvm install 0.12
nvm use 0.12
n=$(which node);n=${n%/bin/node}; chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local
