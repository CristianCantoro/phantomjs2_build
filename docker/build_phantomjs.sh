#!/usr/bin/env bash

docker build -t cristiancantoro/build_phantom .
docker run --rm -t -i -v $PWD:/mnt cristiancantoro/build_phantom:latest /bin/bash -c "cp /root/phantomjs/bin/phantomjs /mnt"
sudo chown $USER:$USER $PWD/phantomjs