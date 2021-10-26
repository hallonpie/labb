# ansible
School work (VG uppgift)
------------------------------

## Host machine
* Ubunt desktop
* Ram: 16GB

### Installed 
* virtualbox.

#### Aim is to automate VM install process for ansible lab

------------------------------
Install vagrant: (On host)
------------------------------

* curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
* sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.* com $(lsb_release -cs) main"
* sudo apt-get update && sudo apt-get install vagrant

------------------------------
Install ansible: (On host)
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
* ansible-playbook webb.yml
* ansible-vault encrypt vars/databas/password.yml
* ansible-playbook  databas.yml --ask-vault-pass


## Troubleshoot:
* If key_handle.sh or bootstrap.sh returns with premission denied, check if those files are executable.
  run --> chmod 755 key_handle.sh  bootstrap.sh

# Ansible

## WEB
* To run vg_webb.yml host machine needs community.genaral.cpanm module collection. On host machine run "ansible-galaxy collection install community.general"

## Database
* To run databas.yml host machine needs community.mysql collection. On host machine run "ansible-galaxy collection install community.mysql"
