#! /usr/bin/sh
# Set up the remote base environment
# Ensure that python, virtualenv, and docker are installed

sudo apt-get update
sudo apt-get install python-pip git -y

# sudo pip install virtualenv virtualenvwrapper
# Since we'll be running dockers,
# we won't necessarily need to run virtualenvs from outside the containers

# Setup docker
sudo apt-get install linux-image-generic-lts-raring linux-headers-generic-lts-raring

# reboot
sudo reboot

curl -s https://get.docker.io/ubuntu/ | sudo sh

# Modify /etc/default/docker and add the following line:
sudo echo 'DOCKER_OPTS = "-g /home/ubuntu/src/dockers"' >> /etc/default/docker
# Then restart the service
sudo service docker restart
