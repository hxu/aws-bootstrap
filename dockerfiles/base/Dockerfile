FROM ubuntu
MAINTAINER Han Xu

RUN sudo apt-get update
RUN sudo apt-get install python-pip curl vim git -y
RUN sudo pip install virtualenv virtualenvwrapper

# Base directory for our working environment
RUN sudo mkdir /src

# Add the .bashrc
ADD ./.bashrc /.bashrc
