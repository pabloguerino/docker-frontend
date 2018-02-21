PROJECT = skilld/localtest
GITLAB = xxxxxxxxxxx

login:
	docker login $(GITLAB)

build:
	docker build -t $(GITLAB)$(PROJECT) . --no-cache

push:
	docker push $(GITLAB)$(PROJECT)
