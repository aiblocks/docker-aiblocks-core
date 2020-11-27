FROM aiblocks/base:latest

MAINTAINER AiBlocks Dev <dev@aiblocks.io>

ENV AIBLOCKS_CORE_VERSION 1.0.0-1412-90305ca9

EXPOSE 11625
EXPOSE 11626

VOLUME /data
VOLUME /postgresql-unix-sockets
VOLUME /heka

ADD install /
RUN /install

ADD heka /heka
ADD confd /etc/confd
ADD utils /utils
ADD start /

CMD ["/start"]
