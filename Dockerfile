FROM debian:buster-slim

MAINTAINER GoAbout <tech@goabout.com>

ENV VERSION=5.8.3

ADD https://packages.elastic.co/curator/5/debian9/pool/main/e/elasticsearch-curator/elasticsearch-curator_${VERSION}_amd64.deb \
    /tmp/curator.deb

RUN dpkg -i /tmp/curator.deb && rm /tmp/curator.deb

USER nobody
ENTRYPOINT ["/usr/bin/curator"]
