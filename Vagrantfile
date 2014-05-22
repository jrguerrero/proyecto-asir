VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "cajaupdate"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  config.vm.network "forwarded_port", guest: 80, host: 4444

  config.vm.provision "chef_solo" do |chef|

	chef.json = { 

		"mysql" => {

			"server_root_password" => "q",
			"server_repl_password" => "q",
			"server_debian_password" => "q"
			},

		"phpapp" => {

			"db_password" => "q"

			}
	}

	chef.cookbooks_path = "cookbooks"
	chef.add_recipe "apt"
	chef.add_recipe "phpapp"

  end

end
