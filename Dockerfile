FROM python:3.6

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update\
&& apt-get install -y --no-install-recommends software-properties-common \
&& apt-get update \
&& apt-get install -q -y --no-install-recommends python3 python3-dev python3-pip python3-setuptools python3-wheel gcc \
&& apt-get install -q -y vim \
&& apt-get install default-libmysqlclient-dev -y \
&& apt-get clean 

COPY ./requirements.txt /usr/src/app/requirements.txt
RUN pip install --upgrade pip
RUN pip3 install -U setuptools
RUN pip3 install -r ./requirements.txt

COPY . /usr/src/app/