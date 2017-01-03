FROM debian:jessie
RUN apt-get update && apt-get install -y apt-transport-https socat

RUN apt-get install -y gcc

COPY build-clips /build-clips

RUN cd /build-clips/src/core && gcc -o clips -DLINUX=1 *.c -lm && mv clips /usr/local/bin

COPY docker-entrypoint.sh /docker-entrypoint.sh
# ENTRYPOINT [ "/docker-entrypoint.sh" ]

