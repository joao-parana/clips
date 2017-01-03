FROM debian:jessie
RUN apt-get install socat
ENTRYPOINT [ "docker-entrypoint.sh" ]

