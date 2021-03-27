FROM debian:latest as builder

RUN apt update && \
    apt install -y \
      wget

RUN wget -O pfclient.tar.gz http://client.planefinder.net/pfclient_5.0.161_armhf.tar.gz
RUN tar xzf pfclient.tar.gz

FROM debian:latest

RUN apt update && \
    apt install -y \
      iputils-ping \
      ca-certificates

COPY --from=builder /pfclient /usr/bin/pfclient
RUN ["chmod", "+x", "/usr/bin/pfclient"]

COPY run.sh /run.sh
RUN ["chmod", "+x", "/run.sh"]

ENTRYPOINT ["/run.sh"]
