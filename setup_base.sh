#! /usr/bin/sh
# Set up the remote base environment
# Ensure that python, virtualenv, and docker are installed

sudo apt-get update
sudo apt-get install -y python-pip git

# sudo pip install virtualenv virtualenvwrapper
# Since we'll be running dockers,
# we won't necessarily need to run virtualenvs from outside the containers

# Setup docker
sudo apt-get install -y linux-image-generic-lts-raring linux-headers-generic-lts-raring

# reboot
sudo reboot
curl -s https://get.docker.io/ubuntu/ | sudo sh

# Add a base mountpoint
mkdir /home/ubuntu/src

# Tell docker to use the mounted drives for docker container and image storage
sudo /bin/sh -c 'echo DOCKER_OPTS=\"-g /home/ubuntu/src/dockers\" >> /etc/default/docker'
# Then restart the service
sudo service docker restart
