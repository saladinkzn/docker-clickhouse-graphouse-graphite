FROM yandex/clickhouse-client
ADD migrations/ migrations/
ADD wait-for-it.sh wait-for-it.sh
ADD entrypoint.sh entrypoint.sh
ENTRYPOINT [ "/bin/bash" ]
CMD ["entrypoint.sh"]
