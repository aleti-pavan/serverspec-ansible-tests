Vagrant.configure(2) do |config|
#  config.vm.box = "generic/rhel7"
##  config.vm.box = "ubuntu/xenial64"
  config.vm.box = "in-vagranti/centos-7.6"

  config.vm.provision "ansible_local" do |ansible|
    ansible.limit = 'all'
    ansible.inventory_path = 'hosts'
    ansible.playbook = 'local.yml'
  end

  config.vm.provision :serverspec do |spec|
    spec.pattern = 'test/java_spec.rb' # pattern for test files
  end
end
