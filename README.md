# ansible
Learning ansible.
------------------------------

## Host machine
* Ubunt desktop
* Ram: 16GB

### Installed 
* virtualbox.

#### Aim is to automate VM install process for ansible lab

------------------------------
Install vagrant: (Ubantu host)
------------------------------

* curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
* sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.* com $(lsb_release -cs) main"
* sudo apt-get update && sudo apt-get install vagrant

------------------------------
Install ansible: (Ubantu host)
------------------------------

* sudo apt update
* sudo apt install software-properties-common
* sudo add-apt-repository --yes --update ppa:ansible/ansible
* sudo apt install ansible

## Vagrant commands:
* vagrant up --> To provision VMs.
* vagrant halt --> To shutdown VMs.
* vagrant destroy --> To destroy VMs.

## Ansible commands:
* ansible -m ping all --> To check connectivity to vms
# labb
# labb
