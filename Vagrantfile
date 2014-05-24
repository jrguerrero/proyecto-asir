VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "nombrecaja"
  config.vm.box_url = "urlcaja"

  config.vm.network "forwarded_port", guest: 80, host: puerto

  config.vm.provision "chef_solo" do |chef|

	chef.json = { 

		"mysql" => {

			"server_root_password" => "sqlpass",
			"server_repl_password" => "sqlpass",
			"server_debian_password" => "sqlpass"
			},

		"phpapp" => {

			"db_password" => "sqlpass"

			}
	}

	chef.cookbooks_path = "cookbooks"
	chef.add_recipe "apt"
	chef.add_recipe "phpapp"

  end

end
