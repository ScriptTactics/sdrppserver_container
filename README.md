# sdrppserver_container

Docker container for sdr++ server, a linux I/Q stream server for SDRPlay RSP1, RSP1A, RSP2, RSPDuo, RSPdx

It works with compatible devices including:

* RSP1, RSP1A, RSP2, RSPDuo, RSPdx SDRPlay devices

## Notes

This server is intended to be used with [SDR++](https://github.com/AlexandreRouma/SDRPlusPlus) the bloat-free SDR software by [Alexandre Rouma](https://github.com/AlexandreRouma). Help him on [Patreon](https://www.patreon.com/ryzerth).

At this time (june 2022), this container installs the full SDR++ binary, needing all dependencies as the server mode is part of the desktop client. The debian package comes from the [latest development build](https://github.com/AlexandreRouma/SDRPlusPlus/actions) of SDR++.

### Defaults

* Port 5259/tcp is used for the I/Q data stream and is exposed by default

### User Configured Environment Variables

* none

## Run with Bash Script

The bash script included in the directory should be all you need to get up and running if you are on Linux. 

1. Plug in your SDR device to your machine
1. Run `./runcontainer.sh`
1. Verify no error messages print and type `sudo docker ps` to verify the container is up and running
1. On SDR++ set the source to `SDR++ Server`
1. Se the IP to the IP of the machine running SDR++ server. Ex: `192.168.1.2` and set the port to `5259`
1. Click connect.
1. After you have connected under the section labled `Source` make sure you select your SDR device. Then click play and you should start receiving signals.

### Example docker run

```bash
docker run -d \
--restart unless-stopped \
--name='sdrppserver' \
--device=/dev/bus/usb \
--volume=<host_config>:/config \
ghcr.io/f4fhh/sdrppserver_container
```

### HISTORY

* Version 0.1.0: Initial build

### Credits

* [SDRPlay](https://github.com/SDRplay) for the SDK of the RSP devices
* [SDR++](https://github.com/AlexandreRouma/SDRPlusPlus) bloat-free SDR by [Alexandre Rouma](https://github.com/AlexandreRouma)
