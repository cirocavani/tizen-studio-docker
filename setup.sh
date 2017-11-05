#!/bin/bash
set -eu

cd $(dirname "$0")

JAVA_JDK=_deps/jdk-8u152-linux-x64.tar.gz

if [ ! -f $JAVA_JDK ]; then
    curl -k -L \
        -H "Cookie: oraclelicense=accept-securebackup-cookie" \
        http://download.oracle.com/otn-pub/java/jdk/8u152-b16/aa0333dd3019491ca4f6ddbe78cdb6d0/jdk-8u152-linux-x64.tar.gz \
        -o $JAVA_JDK
fi

TIZEN_CLI=_deps/web-cli_Tizen_Studio_2.0_ubuntu-64.bin

if [ ! -f $TIZEN_CLI ]; then
    curl -k -L \
        http://download.tizen.org/sdk/Installer/tizen-studio_2.0/web-cli_Tizen_Studio_2.0_ubuntu-64.bin \
        -o $TZEN_CLI
    chmod +x $TZEN_CLI
fi
