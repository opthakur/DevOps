Vagrant.configure(2) do |config|

 config.vm.define "master" do |master|
   master.vm.box = "centos/7"
   master.vm.hostname = "master"
   #master.vm.network "public_network"
   master.vm.network "private_network",ip:"192.168.33.10"
   config.vm.synced_folder ".","/vagrant",disabled:true
 end

 config.vm.define "minion1" do |minion1|
   minion1.vm.box = "centos/7"
   minion1.vm.hostname = "minion1"
   #web.vm.network "public_network"
   minion1.vm.network "private_network",ip:"192.168.33.20"
   #web.vm.network "forwarded_port",guest:80,host:8080
   config.vm.synced_folder ".","/vagrant",disabled:true
 end
 config.vm.define "minion2" do |minion2|
   minion2.vm.box = "centos/7"
   minion2.vm.hostname = "minion2"
   #web.vm.network "public_network"
   minion2.vm.network "private_network",ip:"192.168.33.30"
   #web.vm.network "forwarded_port",guest:80,host:8080
   config.vm.synced_folder ".","/vagrant",disabled:true
 end
 
 config.vm.define "minion3" do |minion3|
   minion3.vm.box = "centos/7"
   minion3.vm.hostname = "minion3"
   #web.vm.network "public_network"
   minion3.vm.network "private_network",ip:"192.168.33.40"
   #web.vm.network "forwarded_port",guest:80,host:8080
   config.vm.synced_folder ".","/vagrant",disabled:true
 end

end
