FROM ubuntu:trusty

RUN useradd rtorrent

RUN apt-get update && apt-get install -y --no-install-recommends \
  rtorrent

RUN mkdir -p /rtorrent && chown rtorrent:rtorrent /rtorrent

COPY ./rtorrent.rc /home/rtorrent/.rtorrent.rc

RUN chown rtorrent:rtorrent /home/rtorrent/.rtorrent.rc

USER rtorrent

CMD ["rtorrent"]
