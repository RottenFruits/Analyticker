FROM centos:6

#print doing command
RUN set -x

#install utility command
RUN yum -y install epel-release && \
    yum install -y wget && \
    yum install -y sudo

#install r and rstudio server
RUN sudo yum -y install R && \
    mkdir downloads && \
    cd downloads/ && \
    wget -q https://download2.rstudio.org/rstudio-server-rhel-1.1.463-x86_64.rpm && \
    sudo yum -y install rstudio-server-rhel-1.1.463-x86_64.rpm
    
#user setting
RUN adduser rstudio && \
    echo "rstudio:rstudio" | chpasswd

EXPOSE 8787
