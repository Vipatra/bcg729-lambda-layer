#!/bin/bash

set -e


bash install_with_docker.sh

docker build -f Dockerfile.test . -t test-python-3.8-cmake