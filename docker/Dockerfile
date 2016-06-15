
FROM ubuntu:xenial
MAINTAINER cian@cixce.com

CMD ["txnvalidator", "txnvalidator"]

# apt-deps
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y libjson0
RUN apt-get install -y python
RUN apt-get install -y libcrypto++
RUN apt-get install -y python-twisted
RUN apt-get install -y python-twisted-web
RUN apt-get install -y python-pip
RUN apt-get install -y python-enum

RUN pip install cbor
RUN pip install twisted
RUN pip install pybitcointools
RUN pip install colorlog
RUN pip install daemonize

COPY dist /dist

RUN pip install /dist/sawtooth_core-1.1.1.dev1-cp27-cp27mu-linux_x86_64.whl
RUN pip install /dist/sawtooth_mktplace-1.1.1.dev1-py2-none-any.whl
RUN pip install /dist/sawtooth_validator-1.1.1.dev1-py2-none-any.whl





