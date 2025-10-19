FROM debian:trixie-slim

RUN apt-get update \
    && apt-get install -y git vim-tiny \
    && apt-get install -y debhelper

RUN apt-get build-dep -y .
RUN dpkg-buildpackage -rfakeroot -i -us -uc
