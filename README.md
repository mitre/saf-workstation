# saf-workstation (WIP)

Virtual machine image with the [MITRE SAF](https://saf.mitre.org) toolset preinstalled.

## Requirements

- [Packer](https://developer.hashicorp.com/packer) >= v1.10.0
- [VMWare Workstation Pro](https://www.vmware.com/products/workstation-pro.html) >= v17.5.1
- [Ansible](https://docs.ansible.com/)

## Usage

Update the root password var and the path to the .vmx file you want to use as the base in `saf-workstation.pkr.hcl`. Then run:

``` hcl
packer init .
packer build .
```

Packer will launch, configure and save the resulting VM image to a local output folder.

See:
- https://developer.hashicorp.com/packer/integrations/hashicorp/vmware
- https://developer.hashicorp.com/packer/integrations/hashicorp/ansible

for more information on using Packer to configure the VM.