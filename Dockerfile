FROM ubuntu:16.04
MAINTAINER Mateo Burillo
RUN apt update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python-pip python-dev build-essential vim
RUN DEBIAN_FRONTEND=noninteractive pip install --upgrade pip
RUN DEBIAN_FRONTEND=noninteractive pip install tensorflow
WORKDIR /
ENTRYPOINT ["python"]
