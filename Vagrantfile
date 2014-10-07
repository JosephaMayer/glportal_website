Vagrant.configure("2") do |config|
  config.vm.box = "puphpet/debian75-x64"
  config.vm.provision :shell, path: "host_config/bootstrap.sh"
  config.vm.network :forwarded_port, guest: 80, host: 9090, auto_correct: true
end
