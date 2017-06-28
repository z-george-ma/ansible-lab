# Ansible Lab

Ansible lab environment to test playbook locally.

## Prerequisites

Ansible lab uses docker to start new VMs / run ansible playbooks.

### Mac OS
1. Install homebrew from terminal
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

2. Install minikube via homebrew
```
brew cask install virtualbox minikube
brew install docker kubernetes-cli
minikube start
```

3. Configure your shell to have docker enviroment variables
```
echo 'eval $(minikube docker-env)' >> ~/.bashrc
echo 'if [ -f ~/.bashrc ]; then source ~/.bashrc; fi' >> ~/.bash_profile
source ~/.bash_profile
```

If you see errors like `Error setting machine env variable` when starting terminal, run `minikube start`.

### Windows
Follow the [instruction](https://blogs.msdn.microsoft.com/wasimbloch/2017/01/23/setting-up-kubernetes-on-windows10-laptop-with-minikube/) to install minikube / docker 

## Get started

1. Run `bootstrap.sh` to set up ansible docker image and target host (ubuntu) image
2. Add your ansible playbook into playbook folder
3. Run `start-target.sh` to run target host
4. Run `start-ansible.sh`
