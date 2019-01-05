FROM ubuntu:18.04

#set up timezone
#https://sleepless-se.net/2018/07/31/docker-build-tzdata-ubuntu/
RUN DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y tzdata
# timezone setting
ENV TZ=Asia/Tokyo

#print command
RUN set -x

#install utility command
RUN apt-get update && \
    apt-get install -y --no-install-recommends wget sudo software-properties-common build-essential

#install jupyter
#https://daichan.club/linux/78323
RUN sudo apt-get update && \
    mkdir downloads && \
    wget -q https://repo.continuum.io/archive/Anaconda3-2018.12-Linux-x86_64.sh -P ./downloads/ && \
    bash ./downloads/Anaconda3-2018.12-Linux-x86_64.sh -b
ENV PATH $PATH:/root/anaconda3/bin
#setup jupyter
RUN jupyter notebook --generate-config && \
    sed -i -e "s/#c.NotebookApp.ip = 'localhost'/c.NotebookApp.ip = '0.0.0.0'/" /root/.jupyter/jupyter_notebook_config.py && \
    sed -i -e "s/#c.NotebookApp.allow_remote_access = False/c.NotebookApp.allow_remote_access = True/" /root/.jupyter/jupyter_notebook_config.py


RUN conda config -y --remove channels conda-forge && \
    conda upgrade -y --all && \
    conda clean -y --packages && \
    conda install -y python=3.6

#install python packages
RUN conda install -y -c conda scikit-learn && \

    conda install -y -c conda-forge pystan && \
    #conda install -y tensorflow && \
    #conda install -y keras && \
    conda install -y -c anaconda chainer && \
    conda install -y pytorch-cpu torchvision-cpu -c pytorch

#install julia
RUN conda install -y -c conda-forge julia && \
    julia -e 'using Pkg; Pkg.add("IJulia")'

EXPOSE 8888

