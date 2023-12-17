#!/bin/bash

# This script only works with the RTL SDR
USB=$(lsusb | grep "Realtek Semiconductor Corp. RTL2838 DVB-T" | awk '{print $4}' | tr -d ':')

container="sdrppserver"
sudo docker build -t $container

sudo docker run -d -p 5259:5259 --restart unless-stopped --name='sdrppserver' --device=/dev/bus/usb/$USB --volume=/home/$USER/sdrpp:/config $container