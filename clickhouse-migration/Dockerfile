FROM yandex/clickhouse-client
ADD migrations/ migrations/
ADD entrypoint.sh entrypoint.sh
ENTRYPOINT [ "/bin/bash" ]
CMD ["entrypoint.sh"]