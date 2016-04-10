#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
SUDO="sudo -E"

echo "Install software-properties-common"
$SUDO apt-get -qq update
$SUDO apt-get -y install software-properties-common

echo "Installing git"
$SUDO apt-add-repository -y ppa:git-core/ppa
$SUDO apt-get -qq update
$SUDO apt-get -y install -qq git

echo "Installing ansible"
$SUDO apt-add-repository -y ppa:ansible/ansible
$SUDO apt-get -qq update
$SUDO apt-get install -qq -y ansible

echo "Cloning https://github.com/limed/ansible-home.git"
git clone https://github.com/limed/ansible-home.git
