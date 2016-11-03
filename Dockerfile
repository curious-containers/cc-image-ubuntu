FROM docker.io/ubuntu:xenial

RUN apt-get update \
&& apt-get install -y apt-utils git python3-pip libssl-dev libffi-dev libseccomp-dev \
&& pip3 install --no-input --upgrade flask requests paramiko psutil toml process_tracing seccomplite \
&& git clone -b 0.5 --depth 1 https://github.com/curious-containers/cc-container-worker.git /opt

ENV PYTHONPATH $PYTHONPATH:/opt
