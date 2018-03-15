FROM centos:7
RUN yum install -y epel-release && yum install -y nginx
COPY html /usr/share/nginx/html
