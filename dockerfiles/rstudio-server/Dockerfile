FROM rottenfruits/analyticker:common

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
    wget -q https://download2.rstudio.org/rstudio-server-1.1.463-amd64.deb -P ./downloads/ && \
    sudo gdebi -n ./downloads/rstudio-server-1.1.463-amd64.deb

#user setting
RUN adduser rstudio && \
    echo "rstudio:rstudio" | chpasswd

#locale set
RUN sudo update-locale LANG=ja_JP.UTF-8

#install packges
ADD install.r /tmp
RUN Rscript /tmp/install.r

EXPOSE 8787

