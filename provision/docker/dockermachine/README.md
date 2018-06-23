# Docker

Installation:

sudo curl -sSL https://get.docker.com/ | sh

Commands:

docker pull fedora

docker images

docker run -it fedora bash

Type exit to get out but it kills the container

docker ps

docker ps -a

docker run -it ubuntu bash

ctrl+p+q to exit without killing

docker ps

docker run fedora echo hello

docker run fedora dnf install -y lynx

docker search opensuse

docker run -d ubuntu tail -f /dev/null

docker ps

docker exec -it <container_id> bash

docker stop <container_id>

docker start <container_id>

docker restart <container_id>

docker stop <container_id>

docker rm <container_id>

# immutable deployment

docker run -d -p 80:5000 training/webapp python app.py

docker port <containerid>

docker logs <containerid>

docker logs -f <containerid>

docker top <containerid>

# Data Volume Mapping

docker create -v /tmp --name datacontainer ubuntu

docker run -it --volumes-from datacontainer ubuntu /bin/bash

#root@3b7f397efee7:/

#echo "I'm not going anywhere" > /tmp/hi

#root@3b7f397efee7:/

#exit

docker ps

docker run -it --volumes-from datacontainer ubuntu /bin/bash

#root@613701b1ad82:/

#cat /tmp/hi

#I'm not going anywhere

#exit

# Accessing Host filesystem from within docker

touch ~/file1

docker run -d -v ~/:/tmp -i ubuntu

docker ps

docker exec -it 7007633cb546 /bin/bash

ls /tmp

# Docker Image from Snapshot

docker run -i -t fedora bash

#yum update -y

#yum install -y httpd

#exit

docker ps -a

docker commit <stoppedfedoracontainerid> fedora-httpd

docker images

docker run -it fedora-httpd bash

#dnf info httpd

#exit

# Dockerfile based Build

cd dockerbuildexample

sudo docker build -t mynginx .

docker images

docker run -d mynginx

docker ps




