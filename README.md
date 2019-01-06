# Analyticker

## Overview

Analyticker is analytics environments of docker for data scientists and data analysts.

## Quick Start

Clone analyticker:
```bash
git clone https://github.com/RottenFruits/Analyticker.git
```

### Jupyter

Build image and run container:
```bash
docker build -t jupyter /Users/ogawashouhei/Documents/project/test/Analyticker/dockerfiles/jupyter/.
docker run -it --name jupyter -p 8888:8888 jupyter /bin/bash
```

Start jupyter:
```bash
jupyter notebook --allow-root
```

Access http://localhost:8888 and you should type token.

![test](/img/2019-01-06 12.03.48.png)





### Rstudio



## Docker image's description

image            | description                               | size    
---------------- | ----------------------------------------- | ------ 
[rstudio-server](https://github.com/RottenFruits/Analyticker/tree/master/dockerfiles/rstudio-server)|Installed rstudio-server on ubuntu|[![](https://images.microbadger.com/badges/image/rottenfruits/analyticker:rstudio-server.svg)](https://microbadger.com/images/rottenfruits/analyticker:rstudio-server "Get your own image badge on microbadger.com")
[jupyter](https://github.com/RottenFruits/Analyticker/tree/master/dockerfiles/jupyter)|Installed jupyter on ubuntu. Available kernels are python, R, julia.|[![](https://images.microbadger.com/badges/image/rottenfruits/analyticker:jupyter.svg)](https://microbadger.com/images/rottenfruits/analyticker:jupyter "Get your own image badge on microbadger.com")
