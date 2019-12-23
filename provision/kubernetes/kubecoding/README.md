# How to run Kubernetes Codes

For First Time:

kubectl create -f pod.yaml

For Updates:

kubectl apply -f pod.yaml

# Deployment

https://gitlab.com/roybhaskar9/devops/raw/master/provision/kubernetes/kubecoding/deployment.yaml

kubectl create -f deployment.yaml

kubectl set image deployment/nginxdeployment nginx=nginx:1.9.1 --record

kubectl rollout status deployment.v1.apps/nginxdeployment

kubectl edit deployment.v1.apps/nginxdeployment

kubectl rollout undo deployment.v1.apps/nginxdeployment


# Difference between Create and Apply

Create: It first deletes the resources and then creates it from the file provided.

Apply: It directly updates in the current live source, only the attributes which are given in the file.

# First Deployment Example

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