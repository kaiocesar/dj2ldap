SHELL := /bin/bash

bu:
	docker-compose build

ug:
	docker-compose run web django-admin startproject coreproject .

up:
	docker-compose up

down:
	docker-compose down
