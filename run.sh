#!/usr/bin/sh

docker build -t ss .

docker run -d -p 26262:26262  -p 26262:26262/udp  ss
