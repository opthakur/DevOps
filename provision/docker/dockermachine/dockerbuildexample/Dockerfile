FROM ubuntu 
MAINTAINER yourusername@gmail.com 
RUN apt-get update 
RUN apt-get install -y nginx 
CMD ["/bin/sh", "-c", "service nginx start && tail -f /dev/null"]