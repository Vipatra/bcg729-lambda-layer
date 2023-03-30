#/bin/bash

set -e

git reset --hard

docker build . -t build-python-3.8-cmake

docker run -v $(pwd):/var/task build-python-3.8-cmake /bin/bash -c "cd /var/task && ./install_within_docker.sh"

cd executables
zip -r ../package.zip *