FROM python:3.8.0-slim

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update
RUN apt-get install python3-dev default-libmysqlclient-dev gcc -y

COPY ./requirements.txt /usr/src/app/requirements.txt

RUN pip install --upgrade setuptools pip
RUN pip install -r ./requirements.txt --no-cache-dir

COPY . /usr/src/app/