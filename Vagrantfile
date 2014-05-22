VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "precise32mod"
  config.vm.box_url = "https://dl.dropboxusercontent.com/s/h7ds4f1qs7exuop/precise32mod.box?dl=1&token_hash=AAFIRue1cfeM7sFJM6BmaEV7-YLRc99jENdP_qXgWJSjuQ&expiry=1400785957"

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
