# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
ENV['VAGRANT_DEFAULT_PROVIDER'] = 'libvirt'

VM_NAME="hitchhackers.localnet"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "debian82"
  config.vm.hostname = VM_NAME
  config.vm.synced_folder ".", "/vagrant", type: "nfs"
  config.vm.provision :shell, path: "bootstrap/debian.sh", run: "always" #, args: [VM_NAME]

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "bootstrap/ansible.yml"
    ansible.extra_vars = {
      #domain: "hitchhackers.localnet"
      domain: VM_NAME
    }
  end
end
