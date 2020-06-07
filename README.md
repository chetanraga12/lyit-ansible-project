# Ansible Project for PLAC_CP802
Student Number: L00113796

The purpose of this repository is to fulfill requirements for PLAC_CP802 as part of the BSc Computing DCM course with LYIT. Included here is all relevant information required to run the scripts associated with this project.

### Assigned Project
Using Ansible search all devices attached to the network, search for open ports on each device, attempt an ssh connection to switches/routers and download their config file.

I chose to execute this project using virtual machines, creating an Ansible-managed network of Lubuntu VMs. This setup consisted of installing required dependencies for the playbook to run correctly, and configuring SSH keys for Ansible to manage its inventory.

The home router available to me was unable to be used for this project. This necessitated the setup of a VyOS VM, configured to share the same network as the other VMs. While not actively routing anything on the network, it did meet the requirement for using an Ansible playbook to download router configurations.

A future version of this playbook may be updated to be platform-agnostic, but for now it can only be considered workable on Debian-based and VyOS systems.

## Project Requirements
### Virtualisation
All testing of this project took place using Hyper-V on Windows 10. Virtual machines were set up as standard Gen 2 VMs attached to the default Hyper-V network. The only exception was a VyOS VM that needed to be Gen 1 in order to function.

- Lubuntu 20.04 LTS: https://lubuntu.me/downloads/
- VyOS 1.1.8: https://downloads.vyos.io/release/legacy/1.1.8/vyos-1.1.8-amd64.iso

### Required Packages
This project requires the following packages installed:

#### Ansible Host
- openssh-server
- ansible
- python3-pip
- paramiko

#### Managed Hosts
- openssh-server

#### VyOS Router VM
- openssh-server

## Running Ansible Script
Download the Ansible playbook [here](https://github.com/danecode/lyit-ansible-project/blob/master/portscan.yml) and run with the following command:

```
ansible-playbook portscan.yml --ask-become-pass
```
The playbook will ask for the sudo password for the managed hosts. For compatibility, make sure this password is the same for all machines listed in Ansible's inventory.
