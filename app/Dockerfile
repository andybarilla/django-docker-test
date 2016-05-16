FROM python:3.4
ENV PYTHONUNBUFFERED 1

RUN apt-get -y update && apt-get -y install python-dev libmysqlclient-dev mysql-client

ADD . /srv/app
WORKDIR /srv/app
RUN pip install -r requirements.txt
EXPOSE 8000

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
