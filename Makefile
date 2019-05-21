.PHONY: run
run:
	docker run --rm -ti -v ~/rtorrent:/rtorrent schu/rtorrent

.PHONY: build
build:
	docker pull ubuntu:18.04
	docker build --no-cache -t schu/rtorrent .
