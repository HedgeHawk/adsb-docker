FROM ubuntu:focal
RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
      curl \
      dnsutils \
      iputils-ping \
      netbase \
      sqlite3 \
      openssl \
      libssl-dev \
      ca-certificates
COPY install.sh /install.sh
RUN ["chmod", "+x", "/install.sh"]
RUN /install.sh
COPY run.sh /run.sh
RUN ["chmod", "+x", "/run.sh"]

ENTRYPOINT ["/run.sh"]
