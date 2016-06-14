#!/bin/bash -x

set -e

if [ ! -f /etc/debian_version ]; then
    echo "Skipping $0"
    exit 0
fi

apt-get update -y

apt-get install -y -q \
    python-enum34 \
    python-cryptography \
    python-service-identity \
    python-openssl \
    python-twisted-core \
    python-twisted \
    python-twisted-web \
    python-dev \
    python-setuptools \
    python-pip \
    g++ \
    swig3.0 \
    libjson0 \
    libjson0-dev \
    libcrypto++-dev \
    git

if [ ! -f /usr/bin/swig ]; then
    ln -s /usr/bin/swig3.0 /usr/bin/swig
fi
