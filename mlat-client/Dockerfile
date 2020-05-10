FROM debian:latest

RUN apt update && \
    apt install -y \
      git \
      python3-dev

RUN git clone https://github.com/adsbxchange/mlat-client.git /mlat-client
WORKDIR /mlat-client

COPY run.sh /run.sh
RUN ["chmod", "+x", "/run.sh"]

ENTRYPOINT ["/run.sh"]
