FROM centos:7
ADD kubernetes.repo /etc/yum.repos.d/kubernetes.repo
RUN yum install -y epel-release && yum install -y nginx && yum install docker -y && yum install kubectl-1.8.1 -y
RUN mkdir -p $HOME/.kube
USER root
ADD config $HOME/.kube/config
RUN chown $(id -u):$(id -g) $HOME/.kube/config && kubectl get nodes
COPY html /usr/share/nginx/html
