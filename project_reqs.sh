#!usr/bin/bash/

# Bash script to install project requirements
# Dane Coyle @danecode

# Package list - OpenSSH, Ansible, Git
PKG_LIST="openssh-server openssh-client ansible git"

# Update and install
apt-get update
apt-get install -y $PKG_LIST
