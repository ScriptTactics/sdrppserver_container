#!/bin/bash

USB=$1

sudo docker run -d -p 5259:5259 --restart unless-stopped --name='sdrppserver' --device=/dev/bus/usb/$USB --volume=/home/$USER/sdrpp:/config ghcr.io/scripttactics/sdrppserver_container:latest