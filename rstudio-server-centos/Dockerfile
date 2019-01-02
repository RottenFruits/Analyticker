FROM centos:6

#print command
RUN set -x

#install utility command
RUN yum -y install epel-release && \
    yum -y install wget && \
    yum -y install sudo 

#install r and rstudio server
RUN sudo yum -y install R && \
    mkdir downloads && \
    wget -q https://download2.rstudio.org/rstudio-server-rhel-1.1.463-x86_64.rpm -P ./downloads/ && \
    sudo yum -y install ./downloads/rstudio-server-rhel-1.1.463-x86_64.rpm

#install r packages
##1.first install necessary command
#description:https://github.com/tidyverse/lubridate/issues/688
RUN sudo yum -y install libxml2-devel && \
    sudo yum -y install libcurl-devel && \
    sudo yum -y install openssl-devel && \
    wget -q https://copr.fedorainfracloud.org/coprs/rhscl/devtoolset-3/repo/epel-6/rhscl-devtoolset-3-epel-6.repo -P ./etc/yum.repos.d && \
    sudo yum -y install centos-release-scl-rh && \
    sudo yum -y install scl-utils && \
    sudo yum -y install devtoolset-3-gcc && \
    sudo yum -y install devtoolset-3-gcc-c++ && \
    sudo yum -y install devtoolset-3-gcc-gfortran
RUN scl enable devtoolset-3 bash
##2.doing install script 
ADD install_packages.r ./tmp
RUN sudo Rscript ./tmp/install_packages.r

#user setting
RUN adduser rstudio && \
    echo "rstudio:rstudio" | chpasswd

EXPOSE 8787
