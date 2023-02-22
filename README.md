# ROS2 for MangoPi
![visitors](https://visitor-badge.glitch.me/badge?page_id=polyhobbyist.mangopi&left_color=green&right_color=blue)

This repository contains documentation for installing ROS2 on a Mango Pi running Ubuntu 22.04. As of February 2022, ROS2 is not distributed as an apt package or docker container for RISC-v, so must either be cross compiled or built natively. This repository contains a base image of ROS2 build using docker buildx, which has been published to a public container repo. Feel free to use this as a base image for your own docker containers.

## Mango Pi Setup
  - [X] [Mango Pi 1Gig](https://a.co/d/0uBYHdL)
  - [X] [USB-C Hub with Ethernet](https://a.co/d/07bm0wg)
  - [X] [Ubuntu 22.04 RISC-V image](https://cdimage.ubuntu.com/releases/22.10/release/ubuntu-22.10-preinstalled-server-riscv64+licheerv.img.xz) for Mango Pi
  - [X] [Wireless Driver manual install](https://github.com/lwfinger/rtl8723ds)
  - [X] Git
  - [X] Docker.io
  - [X] Docker-Compose

> NOTE: [Visual Studio Code Remoting is not supported on RISC-V](https://github.com/microsoft/vscode-remote-release/issues/4802) as of February 22 2022; might be better to develop on a different system and deploy to the Mango Pi.

### SBC Setup
 1. Flash a [Ubuntu 22.04 image](https://cdimage.ubuntu.com/releases/22.10/release/ubuntu-22.10-preinstalled-server-riscv64+licheerv.img.xz) to an SD Card using [Balena Etcher](https://www.balena.io/etcher)
 1. Boot the Mango Pi with a Mini-HDMI Cable and USB-C Hub with keyboard.
 1. Install some software:
    ``` bash
    sudo apt install git
    sudo apt install docker.io
    sudo apt install docker-compose
    ```

 1. After setup, setup Wifi:

    ```bash 
    mkdir ~/ext
    cd ~/ext
    git clone https://github.com/lwfinger/rtl8723ds
    cd rtl8723ds
    make
    sudo make install
    sudo modprobe -v 8723ds 
    ```


## ROS2 Docker Image
### Using Docker Directly
This method allows you to use the demo applications to validate your install; however deriving your own container from the released version is recommended.



### Using as the root for your own container

Create a dockerfile for your image (example below):

``` docker
FROM polyhobbyist/ros:humble

RUN apt-get update && \
	libopencv-dev \
	python3-opencv \
        libboost-all-dev \
        openssl \
        git \
        gdb \
	i2c-tools \
        libcurl4-openssl-dev \
        libssl-dev \
        curl \
        libi2c-dev


ENTRYPOINT ["./ros_entrypoint.sh"]
CMD [ "bash" ]
```

I recommend using a Docker-Compose file, so that you don't have to remember the docker command line to launch your containers.

``` yaml
version: '3.4'
services:
  mangopi:
    image: mangopiws
    network_mode: "host"
    privileged: true
    cap_add:
      - SYS_PTRACE
    security_opt:
      - seccomp:unconfined   
    volumes:
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
    devices:
      - /dev:/dev
    build:
      context: .
      dockerfile: ./Dockerfile
    command: /bin/sh -c "while sleep 1000; do :; done"
```

you can then use the command line:

``` bash
docker-compose up 
```
then

``` bash
docker exec -ti <ros container> /bin/bash
```



## Resources
- [Awesome MangoPi](https://github.com/boosterl/awesome-mango-pi-mq-pro)
- [MangoPi SBC Repo](https://github.com/mangopi-sbc)


