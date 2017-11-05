FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN useradd -m -G sudo tizen && \
    passwd -d tizen

RUN apt-get update && \
    apt-get full-upgrade -y && \
    apt-get install -y \
        --no-install-recommends \
        acl \
        bridge-utils \
        cpio \
        gettext \
        libcanberra-gtk-module \
        libcurl3-gnutls \
        libsdl1.2debian \
        libwebkitgtk-1.0-0 \
        libv4l-0 \
        libxcb-render-util0 \
        libxcb-randr0 \
        libxcb-shape0 \
        libxcb-icccm4 \
        libxcb-image0 \
        libxtst6 \
        make \
        openvpn \
        pciutils \
        python2.7 \
        rpm2cpio \
        sudo \
        zenity \
        zip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY _deps/ /_deps/

RUN tar zxf /_deps/jdk-8u152-linux-x64.tar.gz -C /opt --no-same-owner && \
    echo 'JAVA_HOME=/opt/jdk1.8.0_152' >> /home/tizen/.profile && \
    echo 'PATH=$PATH:/opt/jdk1.8.0_152/bin' >> /home/tizen/.profile

RUN sudo -u tizen -i \
    /_deps/web-cli_Tizen_Studio_2.0_ubuntu-64.bin \
    --accept-license \
    /home/tizen/tizen-studio

RUN rm -rf /_deps

USER tizen
WORKDIR /home/tizen
SHELL ["/bin/bash", "--login", "-c"]

RUN tizen-studio/package-manager/package-manager-cli.bin \
    install \
    --accept-license \
    MOBILE-4.0

CMD tizen-studio/ide/TizenStudio.sh
