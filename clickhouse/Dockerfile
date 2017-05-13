FROM yandex/clickhouse-server

ADD config.xml /etc/clickhouse-server/config.xml
RUN mkdir /etc/clickhouse-server/conf.d/
ADD graphite_rollup.xml /etc/clickhouse-server/conf.d/