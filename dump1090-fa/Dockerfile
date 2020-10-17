FROM debian:latest as builder

RUN apt update && \
    apt install -y \
      git \
      build-essential\
      debhelper\
      librtlsdr-dev\
      pkg-config\
      dh-systemd\
      libncurses5-dev

RUN git clone https://github.com/flightaware/dump1090.git /dump1090
WORKDIR /dump1090
RUN git checkout $(git describe --tags $(git rev-list --tags --max-count=1))
RUN dpkg-buildpackage -b --no-sign --build-profiles=custom,rtlsdr

FROM debian:latest

COPY --from=builder dump1090-fa_*.deb /
RUN apt update && apt install -y /dump1090-fa_*.deb
COPY run.sh /run.sh
RUN ["chmod", "+x", "/run.sh"]

ENTRYPOINT ["/run.sh"]
