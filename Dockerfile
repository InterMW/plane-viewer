FROM ubuntu
RUN apt-get update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install tzdata
RUN apt-get -y install build-essential fakeroot debhelper librtlsdr-dev pkg-config dh-systemd libncurses5-dev libbladerf-dev libhackrf-dev liblimesuite-dev
COPY dump1090 dump1090
COPY public_html public_html
COPY run.sh run.sh
EXPOSE 8080
EXPOSE 30001 30002 30003 30004 30005
ENTRYPOINT [ "bash", "run.sh" ]