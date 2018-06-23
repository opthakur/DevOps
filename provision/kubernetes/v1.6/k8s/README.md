# k8s - Kubernetes version 1.5.2 stable in CentOS 7
mkdir ~/kubernetes

cd kubernetes

wget https://raw.githubusercontent.com/roybhaskar9/k8s/master/Vagrantfile

vagrant up

#Now start master server installation

vagrant ssh master

#Inside Master Server

sudo su -

wget https://raw.githubusercontent.com/roybhaskar9/k8s/master/MasterInstall

chmod +x MasterInstall

./MasterInstall

#Then follow instructions on MasterConfig file in this repository
#After configuring Master run the below command

kubectl get nodes

#Now launch 3 more terminal windows apart from Master server terminal
#Terminal 1 

vagrant ssh minion1

sudo su -

#Then follow instructions as per Minion1Config file in this repository
#Terminal 2 

vagrant ssh minion2

sudo su -

#Then follow instructions as per Minion2Config file in this repository
#Terminal 3 

vagrant ssh minion3

sudo su -

#Then follow instructions as per Minion3Config file in this repository

#After setting up Minions, come back to Master Server and run below command

kubectl get nodes

#Now the output show 192.168.33.20, 192.168.33.30 and 192.168.33.40 nodes as ready

#Launch first app
#On Master Server

kubectl run my-nginx --image=nginx

kubectl get deployments

kubectl get pods -o wide

#Gather the ip of newly launched pod once it is ready. Also notice the ip of node
#Go to the node with that ip. 192.168.33.20 => Minion1, 192.168.33.30 => Minion2, 192.168.33.40 => Minion3
#On that particular minion server, if the ip of pod is lets say 172.17.0.2, then run below command

yum install -y lynx

lynx 172.17.0.2

#This should show a nginx sample web page

kubectl cluster-info

# Scaling

kubectl run mynginx --image=nginx --replicas=2

kubectl scale deployment mynginx --replicas 3

kubectl scale deployment mynginx --replicas 10

# Autoscaling

kubectl autoscale deployment mynginx --min=3 --max=5 --cpu-percent=80

kubectl get pods

kubectl get deployment

kubectl delete deployment mynginx







