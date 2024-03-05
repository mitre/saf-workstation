packer {
    required_version = ">= 1.10.0"
    required_plugins {
        vsphere = {
            source = "github.com/hashicorp/vsphere"
            version = ">= 1.2.4"
        }
        vmware = {
            source = "github.com/hashicorp/vmware"
            version = ">= 1.0.11"
        }
        ansible = {
            source = "github.com/hashicorp/ansible"
            version = ">= 1.1.0"
        }
        git = {
            source = "github.com/ethanmdavidson/git"
            version = ">= 0.6.1"
        }
    }
}

source "vmware-vmx" "saf-workstation-source" {
        source_path = "path to vmx file"
        ssh_username = "root"
        ssh_password = "change me!"
        shutdown_command = "shutdown -P now"
    }

build {
    sources = ["sources.vmware-vmx.saf-workstation-source"]
}