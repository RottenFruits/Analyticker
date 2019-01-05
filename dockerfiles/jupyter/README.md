# jupyter

## usage

```bash
docker build -t jupyter .
docker run -it --name jupyter -p 8888:8888 jupyter /bin/bash
jupyter notebook --allow-root
```

## delete

```bash
docker container stop jupyter
docker container rm jupyter
docker image rm jupyter
```
