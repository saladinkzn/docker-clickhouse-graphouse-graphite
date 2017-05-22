# docker-clickhouse-graphouse-graphite
Docker build for clickhouse + graphouse + graphite-web

This repository contains example of using graphouse with clickhouse instead of carbon + whisper as a backend for graphite-web.

All images are based on ubuntu:16.04

clickhouse-migrator container runs undetermined, but it is idempodent.

## How to use
Run `docker-compose up` and you are ready to use graphite over clickhouse.

## Exposed ports:
* 9090 - graphite
* 9000 - clickhouse client
* 8123 - clickhouse http
* 2003 - graphite api by graphouse
