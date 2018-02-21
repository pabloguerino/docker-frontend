PROJECT = localtest

login:
	docker login gitlab.the-s-team.com:5013

build:
	docker build -t local/$(PROJECT) . --no-cache

push:
	docker push gitlab.the-s-team.com:5013/skilld/$(PROJECT)