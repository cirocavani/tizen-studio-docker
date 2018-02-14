#!/bin/bash
set -eu

docker create \
    --privileged \
    --name tizen-studio \
    --hostname tizen-studio \
    --env DISPLAY=$DISPLAY \
    --volume /tmp/.X11-unix:/tmp/.X11-unix \
    tizen/studio:2.2

echo "Done!"
