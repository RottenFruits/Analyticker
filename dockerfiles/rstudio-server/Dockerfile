FROM rottenfruits/analyticker:common

#set up timezone
#https://sleepless-se.net/2018/07/31/docker-build-tzdata-ubuntu/
# RUN DEBIAN_FRONTEND=noninteractive
# RUN apt-get update && apt-get install -y tzdata
# # timezone setting
# ENV TZ=Asia/Tokyo

# #print command
# RUN set -x

# #install utility command
# RUN apt-get update && \
#     apt-get install -y --no-install-recommends wget sudo ed clang ccache software-properties-common dirmngr gpg-agent gdebi-core


#install r and rstudio server and packages
#https://rtask.thinkr.fr/blog/installation-of-r-3-5-on-ubuntu-18-04-lts-and-tips-for-spatial-packages/
RUN sudo apt-get update && \
    gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 && \
    gpg -a --export E298A3A825C0D65DFD57CBB651716619E084DAB9 | sudo apt-key add - && \
    sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/' && \
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9 && \
    sudo apt-get update && \
    sudo apt-get install -y r-base && \
    sudo apt-get install -y r-base-core && \
    sudo add-apt-repository -y ppa:marutter/c2d4u3.5 && \
    sudo apt-get update && \
    sudo apt-get install -y r-cran-tidyverse r-cran-devtools r-cran-rstan && \
    mkdir downloads && \
    wget -q https://download2.rstudio.org/rstudio-server-1.1.463-amd64.deb -P ./downloads/ && \
    sudo gdebi -n ./downloads/rstudio-server-1.1.463-amd64.deb

#user setting
RUN adduser rstudio && \
    echo "rstudio:rstudio" | chpasswd

EXPOSE 8787

