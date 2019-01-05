# Analyticker

## Overview

Analyticker is analytics environments of docker for data scientists and data analysts.

## Quick Start

- under construction

## Base Docker Containers

image            | description                               | size   | metrics | build status 
---------------- | ----------------------------------------- | ------ | ------- | --------------
rstudio-server|a                                          |a       |a        |a
jupyter|a                                          |a       |a        |a



## todo 
- pystan
- tesorflow
- pytorch
- chainer
- keras

and more


## memo
docker build -t analyticker .

docker run -it --name rstudio-server -p 8787:8787 analyticker /bin/bash

sudo rstudio-server verify-installation