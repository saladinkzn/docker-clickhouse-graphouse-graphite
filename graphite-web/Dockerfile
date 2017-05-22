FROM ubuntu:16.04

ENV PYTHONPATH="/opt/graphite/lib/:/opt/graphite/webapp/"

RUN apt-get update && \
    apt-get install -y python-pip libffi-dev libcairo2-dev && \
    pip install requests && \
    pip install cairocffi && \
    pip install --no-binary=:all: https://github.com/graphite-project/graphite-web/tarball/master && \
    pip install uwsgi && \
    pip install whitenoise 

# settings
ADD graphouse.py /opt/graphite/webapp/graphite/
ADD local_settings.py /opt/graphite/webapp/graphite/

# create database
RUN django-admin.py migrate --settings=graphite.settings --run-syncdb

EXPOSE 9090

CMD /usr/local/bin/uwsgi --http :9090 --master --need-app --catch-exceptions --wsgi-file /opt/graphite/webapp/graphite/wsgi.py

