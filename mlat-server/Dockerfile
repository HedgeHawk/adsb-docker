FROM debian:latest

RUN apt update && \
    apt install -y \
      git \
      python3-pip
#scipy dependencies
#RUN apt install -y build-essential gfortran python-dev libopenblas-dev liblapack-dev cython
RUN apt install -y python3-numpy python3-scipy
RUN git clone https://github.com/adsbxchange/mlat-server.git /mlat-server
WORKDIR /mlat-server
RUN pip3 install pykalman python-graph-core

COPY run.sh /run.sh
RUN ["chmod", "+x", "/run.sh"]

ENTRYPOINT ["/run.sh"]
