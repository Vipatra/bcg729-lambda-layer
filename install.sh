#!/bin/bash

sudo apt update
sudo apt-get -y install gcc make cmake build-essential

git reset --hard

cmake . -DCMAKE_INSTALL_PREFIX=g729 -DCMAKE_PREFIX_PATH=g729 -DENABLE_TESTS=YES
make
make install
