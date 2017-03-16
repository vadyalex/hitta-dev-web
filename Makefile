TAG=latest

default: push

push: build
	docker push vadyalex/hitta-dev-web:$(TAG) && docker push vadyalex/hitta-dev-web:latest

build:
	docker build -t vadyalex/hitta-dev-web:$(TAG) .
