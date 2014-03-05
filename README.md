aws-bootstrap
=============

Setting up AWS servers for Scientific Python

Overview
========

The basic workflow from scratch looks like this:

 - Setup a base AMI machine image.  See `setup_base.sh`
 - Mount a volume on ~/src, which will serve as the workspace
 - Build one of the Docker containers in ~/src
 - Run the Docker container, do all work in the Docker container
   - If running an ipython notebook, make sure to expose the port when running

The workspace is then persisted on the volume in the form of stopped Docker containers.
To pick up work on an existing workspace, then you'd just do this:

 - Launch a machine with the base AMI
 - Mount the volume
 - Restart Docker
 - Restart the Docker container

NOTE: If you're continuing a project, you generally don't want `docker run`, since this will start
a new container at the last commit of the image.  You instead want to restart the old container.

Restarting Docker is necessary because the service is accessing the old ~/src directory, which is now
mounted over by the volume.

Tips and Tricks
===============

 - Attaching to a running container in a new TTY: http://stackoverflow.com/questions/20932357/docker-enter-running-container-with-new-tty
