FROM debian:latest
RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
      curl \
      dnsutils \
      iputils-ping \
      netbase \
      sqlite3 \
      openssl \
      ca-certificates
RUN curl -SL "https://drive.google.com/uc?export=download&id=1YvXOE7tlhtMocmQQBZ7VtW8AN_3oPleF" | tar -xzC /usr/bin modesmixer2
COPY run.sh /run.sh
RUN ["chmod", "+x", "/run.sh"]

ENTRYPOINT ["/run.sh"]
