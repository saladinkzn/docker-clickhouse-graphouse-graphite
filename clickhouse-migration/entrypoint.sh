#!/bin/bash
/bin/bash wait-for-it.sh clickhouse:9000
for line in migrations/*.sql; do
    cat "${line}" | clickhouse-client -h clickhouse
done
