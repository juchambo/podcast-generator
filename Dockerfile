FROM ubuntu:latest

RUN apt-get update && apt-dget install -y \
    python3.10 \
    python3-pip \
    git

RUN pip3 install pyYAML

COPY feed.py /usr/buin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]