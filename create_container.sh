#!/bin/bash
set -eu

cd $(dirname "$0")

if [ ! -z "$(docker ps -q -a -f name=tizen-studio$)" ]; then
    docker rm -f tizen-studio
fi

docker create \
    -it \
    --privileged \
    --name tizen-studio \
    --hostname tizen-studio \
    --env DISPLAY=$DISPLAY \
    --volume /tmp/.X11-unix:/tmp/.X11-unix \
    tizen/studio:2.3

echo "Done!"
