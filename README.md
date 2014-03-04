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

The workspace is then persisted on the volume in the form of stopped Docker containers.
To pick up work on an existing workspace, then you'd just do this:

 - Launch a machine with the base AMI
 - Mount the volume
 - Restart Docker
 - Run the Docker container/image

Restarting Docker is necessary because the service is accessing the old ~/src directory, which is now
mounted over by the volume.
