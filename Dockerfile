FROM centos:7
ADD kubernetes.repo /etc/yum.repos.d/kubernetes.repo
RUN yum install -y epel-release && yum install -y nginx && yum install docker -y && yum install kubectl-1.8.1 -y
COPY html /usr/share/nginx/html
