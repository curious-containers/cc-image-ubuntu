FROM docker.io/ubuntu:xenial

RUN apt-get update \
&& apt-get install -y git python3-pip libssl-dev libffi-dev \
&& pip3 install --no-input --user --upgrade flask requests paramiko psutil pymongo gunicorn gevent \
&& git clone -b 0.12 --depth 1 https://github.com/curious-containers/cc-container-worker.git /opt

ENV PYTHONPATH $PYTHONPATH:/opt
