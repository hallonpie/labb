#!/usr/bin/env bash

useradd -c "deploy" -d /home/deploy -m deploy

echo "%deploy ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/vagrant

sudo timedatectl set-timezone Europe/Stockholm

su - deploy << EOF
mkdir ~/.ssh
chmod 700 ~/.ssh
chown deploy:deploy ~/.ssh
cat /vagrant/deploy_id_rsa.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
EOF