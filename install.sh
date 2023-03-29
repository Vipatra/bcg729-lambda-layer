#!/bin/bash

sudo apt update
sudo apt-get -y install openjpeg-devel libjpeg-devel fontconfig-devel libtiff-devel libpng-devel xz gcc gcc-c++ epel-release zip cmake3

cmake . -DCMAKE_INSTALL_PREFIX=g729 -DCMAKE_PREFIX_PATH=g729 -DENABLE_TESTS=YES
make
make install
