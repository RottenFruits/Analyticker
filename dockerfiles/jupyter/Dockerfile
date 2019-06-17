FROM rottenfruits/analyticker:common

#install jupyter
#https://daichan.club/linux/78323
RUN sudo apt-get update && \    
    wget -q https://repo.continuum.io/archive/Anaconda3-2018.12-Linux-x86_64.sh -P ./downloads/ && \
    bash ./downloads/Anaconda3-2018.12-Linux-x86_64.sh -b
ENV PATH $PATH:/root/anaconda3/bin

#setup jupyter
RUN jupyter notebook --generate-config && \
    sed -i -e "s/#c.NotebookApp.ip = 'localhost'/c.NotebookApp.ip = '0.0.0.0'/" /root/.jupyter/jupyter_notebook_config.py && \
    sed -i -e "s/#c.NotebookApp.allow_remote_access = False/c.NotebookApp.allow_remote_access = True/" /root/.jupyter/jupyter_notebook_config.py


#conda config --remove channels conda-forge && \
RUN conda upgrade -y --all && \
    conda clean -y --packages && \
    conda install -y python=3.6

#install python packages
RUN conda install -y -c conda scikit-learn && \
    conda install -y -c conda-forge pystan && \
    conda install -y tensorflow && \
    conda install -y keras && \
    conda install -y -c anaconda chainer && \
    conda install -y pytorch-cpu torchvision-cpu -c pytorch && \
    conda install -y -c anaconda swig && \
    conda install -y -c anaconda gensim && \
    conda install -y -c conda-forge lightgbm && \
    conda install -y -c conda-forge catboost && \
    pip install Boruta

#install julia and setup jupyter
RUN conda install -y -c conda-forge julia && \
    julia -e 'using Pkg; Pkg.add("IJulia")'

#install r and setup jupyter
RUN conda install -y -c r r && \
    Rscript -e "options(repos='https://cran.ism.ac.jp/'); install.packages('IRkernel'); IRkernel::installspec()"

#insatll nlp tool
RUN pip install janome && \
    pip install mecab-python3 && \
    pip install sentencepiece


EXPOSE 8888