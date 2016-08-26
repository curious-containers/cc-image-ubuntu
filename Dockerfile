FROM docker.io/ubuntu:xenial

RUN apt-get update \
&& apt-get install -y python3-pip libssl-dev libffi-dev \
&& pip3 install --no-input flask \
&& pip3 install --no-input requests \
&& pip3 install --no-input paramiko \
&& pip3 install --no-input psutil \
&& pip3 install --no-input toml

COPY cc-container-worker/container_worker /opt/container_worker
ENV PYTHONPATH $PYTHONPATH:/opt
