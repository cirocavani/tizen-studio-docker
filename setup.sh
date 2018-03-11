#!/bin/bash
set -eu

cd $(dirname "$0")

# JAVA_JDK=jdk-8u152-linux-x64.tar.gz
# JAVA_URL=http://download.oracle.com/otn-pub/java/jdk/8u152-b16/aa0333dd3019491ca4f6ddbe78cdb6d0/jdk-8u152-linux-x64.tar.gz
JAVA_JDK=jdk-8u162-linux-x64.tar.gz
JAVA_URL=http://download.oracle.com/otn-pub/java/jdk/8u162-b12/0da788060d494f5095bf8624735fa2f1/jdk-8u162-linux-x64.tar.gz

if [ ! -f _deps/$JAVA_JDK ]; then
    curl -k -L \
        -H "Cookie: oraclelicense=accept-securebackup-cookie" \
        $JAVA_URL \
        -o _deps/$JAVA_JDK
fi

TIZEN_CLI=web-cli_Tizen_Studio_2.2_ubuntu-64.bin
TIZEN_URL=http://download.tizen.org/sdk/Installer/tizen-studio_2.2/web-cli_Tizen_Studio_2.2_ubuntu-64.bin

if [ ! -f _deps/$TIZEN_CLI ]; then
    curl -k -L \
        $TIZEN_URL \
        -o _deps/$TIZEN_CLI
    chmod +x _deps/$TIZEN_CLI
fi
