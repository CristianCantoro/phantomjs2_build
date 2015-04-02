# -*- coding: utf-8 -*-
# Copyright (c) 2015 Cristian Consonni
# Released under the MIT license, see LICENSE for details

# Run this container with
# docker run --rm -t -i cristiancantoro/build_phantom:latest -v $PWD:/mnt
# phantomjs executable file is /root/phantomjs/bin/phantomjs
# you can transfer it to the current directory on the host with
# cp /root/phantomjs/bin/phantomjs /mnt
FROM phusion/baseimage:0.9.16
MAINTAINER Cristian Consonni "kikkocristian@gmail.com"

# <-- run as root -->
USER root
ENV HOME /root
RUN rm /bin/sh && ln -s /bin/bash /bin/sh


RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get --assume-yes upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get install --assume-yes \
  build-essential g++ flex bison gperf ruby perl libsqlite3-dev \
  libfontconfig1-dev libicu-dev libfreetype6 libssl-dev libpng-dev libjpeg-dev \
  git-core build-essential python python2.7 python-dev

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# checkout phantomjs and build
RUN cd $HOME && git clone git://github.com/ariya/phantomjs.git
RUN cd $HOME/phantomjs && git checkout 2.0 && git clean -xdf
RUN cd $HOME/phantomjs && $HOME/phantomjs/build.sh --confirm

CMD ["/bin/bash"]