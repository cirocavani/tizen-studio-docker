#/bin/bash
set -eu

cd $(dirname "$0")

./setup.sh

docker build -t tizen/studio:2.4 -f tizen-studio.Dockerfile .

echo "Done!"
