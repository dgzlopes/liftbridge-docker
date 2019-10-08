
.PHONY: build
build:
	docker build -t dgzlopes/liftbridge-docker:v0.0.4 -t dgzlopes/liftbridge-docker:latest . --no-cache

.PHONY: publish
publish:
	docker login
	docker push dgzlopes/liftbridge-docker:v0.0.4
	docker push dgzlopes/liftbridge-docker:latest

.PHONY: run
run:
	docker run -d -p 4222:4222 -p 9292:9292 -p 8222:8222 -p 6222:6222 dgzlopes/liftbridge-docker

.PHONY: interative
interative:
	docker run -it -p 4222:4222 -p 9292:9292 -p 8222:8222 -p 6222:6222 dgzlopes/liftbridge-docker /bin/ash
