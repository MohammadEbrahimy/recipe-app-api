FROM python:3.7-alpine
MAINTAINER Tehran App Developer

ENV PYTHONUNBUFFRED 1

COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
