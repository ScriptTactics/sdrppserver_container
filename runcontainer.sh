#!/bin/bash

 docker run -d -p 5259:5259 --restart unless-stopped --name='sdrppserver' --device=/dev/bus/usb/002 --volume=/home/$USER/sdrpp:/config sdrppserver_local