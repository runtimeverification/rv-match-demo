FROM ubuntu:jammy

# Installing some basics regularly used in ecosystem & cleaning up per recommended best practices for image reduction
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive  apt-get install --yes \
    build-essential \
    cmake \
    curl \
    git \
    make \
    python2 \
    python3 \
    python3-pip \
&& rm -rf /var/lib/apt/lists/*
RUN pip3 install virtualenv websockets
    
