FROM ubuntu:18.04

#set up timezone
#https://sleepless-se.net/2018/07/31/docker-build-tzdata-ubuntu/
RUN DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y tzdata
# timezone setting
ENV TZ=Asia/Tokyo

#print command
RUN set -x

#install utility common command
RUN apt-get update && \
    apt-get install -y --no-install-recommends wget sudo language-pack-ja fonts-ipafont fonts-ipaexfont libboost-dev
#install java
RUN apt-get install -y --no-install-recommends default-jre default-jdk
#install utility for jupyter
RUN apt-get install -y --no-install-recommends software-properties-common build-essential git curl file
#install utility for rstudio
RUN apt-get install -y --no-install-recommends ed clang ccache software-properties-common dirmngr gpg-agent gdebi-core

#create directory
RUN mkdir downloads

#install mecab
RUN apt-get install -y --no-install-recommends mecab libmecab-dev mecab-ipadic-utf8 && \
    git clone https://github.com/neologd/mecab-ipadic-neologd.git downloads/mecab-ipadic-neologd && \
    yes yes| downloads/mecab-ipadic-neologd/bin/install-mecab-ipadic-neologd && \
    sed -i -e 's/\/var\/lib\/mecab\/dic\/debian/\/usr\/lib\/x86_64-linux-gnu\/mecab\/dic\/mecab-ipadic-neologd/' etc/mecabrc

#install juman++
RUN cd downloads && \
    wget -q http://lotus.kuee.kyoto-u.ac.jp/nl-resource/jumanpp/jumanpp-1.01.tar.xz  && \
    tar xJvf jumanpp-1.01.tar.xz && \
    cd jumanpp-1.01 && \
    ./configure && \
    make && \
    sudo make install