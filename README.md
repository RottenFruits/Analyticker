# Analyticker

Analyticker is analytics environments for data scientist and data analyst.

- under construction

## todo 
- pystan
- tesorflow
- pytorch
- chainer
- keras

and more

## rstuio-server

### usage

docker build -t rstudio-server .

docker run -it --name rstudio-server -p 8787:8787 rstudio-server /bin/bash

sudo rstudio-server verify-installation

### delete

docker container stop rstudio-server
docker container rm rstudio-server
docker image rm rstudio-server

## jupyter

### usage

docker build -t jupyter .

docker run -it --name jupyter -p 8888:8888 jupyter /bin/bash

docker run -d --name jupyter -p 8888:8888 jupyter

jupyter notebook --allow-root

### delete

docker container stop jupyter
docker container rm jupyter
docker image rm jupyter


## memo
docker build -t analyticker .

docker run -it --name rstudio-server -p 8787:8787 analyticker /bin/bash

sudo rstudio-server verify-installation