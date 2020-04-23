SHELL := /bin/bash

dev-install:
	docker-compose run web django-admin startproject coreproject .

up:
	docker-compose up
down:
	docker-compose down
