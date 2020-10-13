FROM jupyter/scipy-notebook:6d42503c684f

MAINTAINER David Naughton <naughton@umn.edu>

RUN mkdir -p "/home/${NB_USER}/swc-python" && \
    cd "/home/${NB_USER}/swc-python" && \
    wget http://swcarpentry.github.io/python-novice-gapminder/files/python-novice-gapminder-data.zip && \
    unzip python-novice-gapminder-data.zip && \
    chmod -R g+rw "/home/${NB_USER}/swc-python" && \
    echo "PS1='\$ '" >> ~/.bashrc
