#!/bin/bash

set -e

cmake3 . -DCMAKE_INSTALL_PREFIX=g729 -DCMAKE_PREFIX_PATH=g729 -DENABLE_TESTS=YES
make
make install

rm -rf executables

libdir=executables/lib
exedir=executables/bin

mkdir -p $libdir
mkdir -p $exedir

exe=test/encoderTest

cp $exe $exedir


echo "Collecting the shared library dependencies for test/encoderTest"
deps=$(ldd $exe | awk 'BEGIN{ORS=" "}$1\
~/^\//{print $1}$3~/^\//{print $3}'\
 | sed 's/,$/\n/')

echo "Copying the dependencies to executables"

#Copy the deps
for dep in $deps
do
    echo "Copying $dep to $libdir"
    cp "$dep" "$libdir"
done

echo "Done!"