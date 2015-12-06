## Preparation

* download [Oracle Linux 7.2] (https://github.com/oracle/docker-images/blob/OracleLinux-images/OracleLinux/7.2/oraclelinux-7.2.tar.xz)
* download jdk

    $curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u65-b17/jdk-8u65-linux-x64.rpm > jdk-8u65-linux-x64.rpm

## How to build docker docker-images

* prepare Dockerfile with template(Dockerfile.base, Dockerfile.oracle, Dockerfile.xwin)
* build docker docker

    $docker build -t yekki/oel:7.2 .

## How to run xwindows apps

* open XQuartz in osx
* open terminal and run socat in osx

    $socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"

* run docker container with ovirtualbox ip in osx
    
    $docker run -it -e DISPLAY=192.168.99.1:0 --name xwin yekki/xoel:7.2 /bin/bash

## TODO

* add Chinese fonts support
