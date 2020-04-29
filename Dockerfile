FROM python:3.8.0-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update
RUN apt-get install python3-dev default-libmysqlclient-dev gcc -y
RUN mkdir /usr/src/app

WORKDIR /usr/src/app
COPY ./requirements.txt /usr/src/app/requirements.txt

RUN pip install --upgrade setuptools pip
RUN pip install -r ./requirements.txt

COPY . /usr/src/app/