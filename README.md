# vagrant-lxde
[Vagrant](https://www.vagrantup.com/) [LXDE](http://lxde.org/) Linux image, ready to rock.

## Goal
Provide a portable, replicable and reliable working environment for professional and personal Front-End Node.js development.

## Features
The base image is provisioned as follows:

### Base image
- [X] [16.04 LTS 64-bit Ubuntu](https://bitbucket.org/janihur/ubuntu-1604-lxde-desktop)
- [X] LXDE desktop environment
- [X] Oracle VM [Guest additions](https://www.virtualbox.org/manual/ch04.html)
- [X] English keyboard configuration

### Provisioned Programs
- [X]  [Terminator - terminal emulator](https://wiki.archlinux.org/index.php/Terminator)
- [X]  [Kupfer - app launcher](https://github.com/kupferlauncher/kupfer)
- [X]  [Shutter - screenshot utility](http://shutter-project.org/)
- [X]  [Vokoscreen - screen recording utility](https://github.com/vkohaupt/vokoscreen)
- [X]  [Google Chrome](https://www.google.com/chrome/index.html)
- [X]  [Atom - next gen editor](https://github.com/atom/atom)
- [X]  [Git Cola - Git GUI utility](https://git-cola.github.io/)
- [X]  [Meld - Git confict solving tools](http://meldmerge.org/)
- [X]  [NVM - Node Version Manager](https://github.com/creationix/nvm)

## Todo

- [ ] Install node.js + npm
- [ ] Re-test (erase -> full lifecycle)
- [ ] Refactor shell script
- [ ] [Universalize for other base images](https://github.com/dotless-de/vagrant-vbguest)

## Management
### Useful Commands
- Spin up the virtual environment (Vagrant-box)
```
vagrant up
```
- Provision the currently running environment
```
vagrant provision
```
- List the running environments
```
vagrant box list
```
- Stop a running environment
```
vagrant suspend
```
- Completely remove the environment
```
vagrant destroy
```

## License
MIT © [Alain Perkaz](https://aperkaz.github.io)
