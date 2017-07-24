FROM docker.io/ubuntu:xenial

RUN apt-get update \
&& apt-get install -y git-core python3-pip libssl-dev libffi-dev
RUN pip3 install --no-input --user --upgrade git+https://github.com/curious-containers/cc-container-worker.git@0.12
