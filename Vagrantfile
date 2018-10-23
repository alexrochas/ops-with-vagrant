Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.provision :docker do |d|
    d.build_image "/vagrant/nginx", args: '-t "nginx"'
    d.run "nginx", args: '-p 8080:80'
    d.build_image "/vagrant/fake-service", args: '-t "fake-service"'
    d.run "fake-1", image: "fake-service", args: '-p 8082:8080 -e "MESSAGE=Second instance"'
    d.run "fake-2", image: "fake-service", args: '-p 8081:8080 -e "MESSAGE=First instance"'
  end

  config.vm.provider "virtualbox" do |vb|
    vb.name = 'docker'
    vb.memory = 4096
    vb.cpus = 1
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

end
