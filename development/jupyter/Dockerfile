FROM ubuntu:18.04

#https://sleepless-se.net/2018/07/31/docker-build-tzdata-ubuntu/
RUN DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y tzdata
# timezone setting
ENV TZ=Asia/Tokyo

#print command
RUN set -x

#install utility command
RUN apt-get update && \
    apt-get install -y --no-install-recommends wget sudo ed clang ccache software-properties-common dirmngr gpg-agent gdebi-core

#install jupyter
#https://daichan.club/linux/78323
RUN sudo apt-get update && \
    mkdir downloads && \
    wget -q https://repo.continuum.io/archive/Anaconda3-2018.12-Linux-x86_64.sh -P ./downloads/ && \
    bash ./downloads/Anaconda3-2018.12-Linux-x86_64.sh -b
ENV PATH $PATH:/root/anaconda3/bin


RUN jupyter notebook --generate-config && \
    sed -i -e "s/#c.NotebookApp.ip = 'localhost'/c.NotebookApp.ip = '0.0.0.0'/" /root/.jupyter/jupyter_notebook_config.py && \
    sed -i -e "s/#c.NotebookApp.allow_remote_access = False/c.NotebookApp.allow_remote_access = '*'/" /root/.jupyter/jupyter_notebook_config.py

EXPOSE 8888
