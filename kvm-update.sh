#!/bin/bash
set -eu

echo "Updating KVM group id..."

KVM_ID=$(getent group | grep kvm: | cut -d : -f 3)
LIBVIRT_ID=$(getent group | grep libvirt: | cut -d : -f 3)

docker start tizen-studio
docker exec tizen-studio sudo groupmod -g $KVM_ID kvm
docker exec tizen-studio sudo groupmod -g $LIBVIRT_ID libvirtd
docker stop tizen-studio

echo "KVM update done!"
