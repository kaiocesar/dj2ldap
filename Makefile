SHELL := /bin/bash

bu:
	docker-compose build

dba:
	docker-compose exec web python manage.py migrate --noinput

ug:
	docker-compose run web django-admin startproject coreproject .

up:
	docker-compose up

down:
	docker-compose down
