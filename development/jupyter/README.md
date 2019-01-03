# rstudio-server-debian

- under construction

## usage

docker build -t jupyter .

docker run -it --name jupyter -p 8888:8888 jupyter /bin/bash

docker run -d --name jupyter -p 8888:8888 jupyter

jupyter notebook --allow-root

## delete

docker container stop jupyter
docker container rm jupyter
docker image rm jupyter


docker run -it --name test ubuntu:18.04 /bin/bash
