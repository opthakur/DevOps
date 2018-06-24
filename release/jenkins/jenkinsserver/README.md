# jenkins
For Jenkins, use Ubuntu 16.04

For Tomcat, use CentOS 7

In CentOS 7, wget is not there by default. So first you need to do "yum install -y wget" and then download this script using wget

# tomcat 8
#deploy under "path" context path
curl --upload-file appplication-0.1-1.war "http://tomcat:tomcat@localhost:8080/manager/deploy?path=/application-0.1-1
#undeploy
curl "http://tomcat:tomcat@localhost:8080/manager/undeploy?path=/application-0.1-1"

# tomcat 7
#deploy under "path" context path
curl --upload-file appplication-0.1-1.war "http://tomcat:tomcat@localhost:8080/manager/text/deploy?path=/application-0.1-1
#undeploy
curl "http://tomcat:tomcat@localhost:8080/manager/text/undeploy?path=/application-0.1-1"

#tomcat7 uses /manager/text/undeploy and /manager/text/deploy paths

#tomcat6-admin (debian) or tomcat6-admin-webapps (rhel) has to be installed 
#tomcat-users.xml has to be setup with user that has admin, manager and manager-script roles
