#!/bin/bash

sudo apt update
apt install libelf-dev libpcap0.8-dev cmake

git clone git://github.com/GNS3/dynamips.git
cd dynamips
mkdir build
cd build
cmake ..
make
