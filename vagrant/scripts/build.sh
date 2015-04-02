#!/usr/bin/env bash

sudo apt-get --assume-yes install build-essential g++ flex bison gperf ruby \
  perl libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev \
  libpng-dev libjpeg-dev git-core htop build-essential python python2.7 \
  python-dev

cd $HOME
git clone git://github.com/ariya/phantomjs.git

cd $HOME/phantomjs
git checkout 2.0
git clean -xdf

./build.sh --confirm && cp $HOME/phantomjs/bin/phantomjs /vagrant

