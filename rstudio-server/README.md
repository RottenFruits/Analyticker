# rstudio-server

- under construction

## usage

docker build -t rstudio-server .

docker run -it --name rstudio-server -p 8787:8787 rstudio-server /bin/bash
sudo rstudio-server verify-installation

## delete

docker container stop rstudio-server
docker container rm rstudio-server
docker image rm rstudio-server