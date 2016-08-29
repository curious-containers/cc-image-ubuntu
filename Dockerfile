FROM docker.io/ubuntu:xenial

RUN apt-get update \
&& apt-get install -y git python3-pip libssl-dev libffi-dev \
&& pip3 install --no-input flask \
&& pip3 install --no-input requests \
&& pip3 install --no-input paramiko \
&& pip3 install --no-input psutil \
&& pip3 install --no-input toml

RUN git clone https://github.com/curious-containers/cc-container-worker.git /opt

ENV PYTHONPATH $PYTHONPATH:/opt
