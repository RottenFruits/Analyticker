# rstudio-server-debian

- under construction

## usage

docker build -t jupyter .

docker run -it --name jupyter -p 8888:8888 jupyter /bin/bash

docker run -d --name jupyter -p 8888:8888 jupyter


## delete

docker container stop jupyter
docker container rm jupyter
docker image rm jupyter


docker run -it --name test ubuntu:18.04 /bin/bash

apt-get install libssl1.0.0



'httr', 'rvest', 'xml2'

libcurl4-openssl-dev
libssl-dev
libxml2-dev