# vagrant-lxde
[Vagrant](https://www.vagrantup.com/) [LXDE](http://lxde.org/) Linux image, ready to rock.

## Goal
Provide a portable, replicable and reliable working environment for professional and personal Front-End Node.js development.

## Features
The base image is provisioned as follows:

### Base image
- [X] [17.04 64-bit Ubuntu](http://releases.ubuntu.com/zesty/)
- [X] LXDE desktop environment
- [X] Oracle VM [Guest additions](https://www.virtualbox.org/manual/ch04.html)

### Installed Programs
- [X]  [Terminator - terminal emulator](https://wiki.archlinux.org/index.php/Terminator)
- [X]  [Kupfer - app launcher](https://github.com/kupferlauncher/kupfer)
- [X]  [Shutter - screenshot utility](http://shutter-project.org/)
- [X]  [Vokoscreen - screen recording utility](https://github.com/vkohaupt/vokoscreen)
- [X]  [Google Chrome](https://www.google.com/chrome/index.html)
- [X]  [Atom - next gen editor](https://github.com/atom/atom)
- [X]  [Git Cola - Git GUI utility](https://git-cola.github.io/)
- [X]  [Meld - Git confict solving tools](http://meldmerge.org/)
- [X]  [NVM - Node Version Manager](https://github.com/creationix/nvm)

## Management
### Box Management Commands
- Spin up the virtual environment (Vagrant-box). The environment is also provisioned:
```
vagrant up
```
- Provision the currently running environment (using `provision.sh` script):
```
vagrant provision
```
- List the running environments:
```
vagrant box list
```
- Stop a running environment:
```
vagrant suspend
```
- Completely remove the environment:
```
vagrant destroy
```
### Miscellaneous
- Start the graphical interface from command-line:
```
startx
```
- Set the keyboard layout to Spanish (session):
```
setxkbmap -layout es
```
- Set the keyboard layout to Spanish (permanently). Reboot after:
```
apt-get install console-common
localectl set-x11-keymap es
localectl set-keymap es
```
## License
MIT © [Alain Perkaz](https://aperkaz.github.io)
