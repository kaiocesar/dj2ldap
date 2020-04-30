FROM python:3.6

ENV PYTHONUNBUFFERED 1

RUN mkdir /core
WORKDIR /core
ADD requirements.txt /core/
RUN pip install --upgrade pip && pip install -r requirements.txt
ADD . /core/
