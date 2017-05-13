FROM ubuntu:16.04

ARG repository="deb https://repo.yandex.ru/clickhouse/xenial dists/stable/main/binary-amd64/"
ARG version=\*

#java 8
RUN apt-get update && \
	apt-get install -y software-properties-common python-software-properties && \
	echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
	add-apt-repository ppa:webupd8team/java && \
	apt-get update && \
	apt-get install -y oracle-java8-installer && \
	apt-get clean

#graphouse
RUN apt-get update && \
	apt-get install -y apt-transport-https && \
	mkdir -p /etc/apt/sources.list.d && \
	echo $repository | tee /etc/apt/sources.list.d/clickhouse.list && \
	apt-get update && \
	apt-get install --allow-unauthenticated -y graphouse=$version && \
	rm -rf /var/lib/apt/lists/* /var/cache/debconf && \
    apt-get clean

ADD graphouse.properties /etc/graphouse/

EXPOSE 2003
EXPOSE 2005
	
ENTRYPOINT "/opt/graphouse/bin/graphouse"