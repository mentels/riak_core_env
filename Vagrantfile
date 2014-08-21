VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/precise64"
  config.omnibus.chef_version = :latest
  config.librarian_chef.cheffile_dir = "chef"
  config.vm.synced_folder "synced", "/home/vagrant/synced"
  config.ssh.insert_key = true
  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = "chef/cookbooks"
    chef.custom_config_path = "Vagrantfile.chef"
    chef.add_recipe 'git'
    chef.add_recipe 'erlang'
    chef.add_recipe 'riak_core_tutorial'
    chef.json = {
      :erlang => {
        :install_method => 'esl',
        :esl => {:version => '1:15.b.3-2~ubuntu~precise'}
      }}
  end
end
