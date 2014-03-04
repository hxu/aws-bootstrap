# Base Dockerfile for Scientific Python

FROM ubuntu:12.04
MAINTAINER Han Xu

RUN sudo apt-get update
RUN sudo apt-get install -y python-pip curl vim git htop
RUN sudo pip install virtualenv virtualenvwrapper

# Base directory for our working environment
RUN sudo mkdir /src

# Add the .bashrc
ADD .bashrc /.bashrc

# Install pre-requisites for scientific python
RUN sudo apt-get install -y python-dev 
RUN sudo apt-get install -y libtiff4-dev libjpeg8-dev zlib1g-dev libfreetype6-dev liblcms1-dev libwebp-dev tcl8.5-dev tk8.5-dev libpng12-dev libatlas-base-dev
RUN sudo apt-get install -y python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose

# Make a default virtualenv
RUN virtualenv /src/.virtualenvs/base

# Install the packages into the virtualenv
RUN /src/.virtualenvs/base/bin/pip install Pillow ipdb numpy python-dateutil ipython[all] cython
RUN /src/.virtualenvs/base/bin/pip install scipy scikit-image scikit-learn pandas

# Copy in the config files
ADD ipython_notebook_config.py /.config/ipython/profile_default/ipython_notebook_config.py
ADD mycert.pem /.config/ipython/profile_default/mycert.pem

CMD /bin/bash
