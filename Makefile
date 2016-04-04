MAINTAINERNAME=exo
IMAGENAME=rorimage
CONTAINERNAME=ROR
DB_PASSWORD=
DB_IP=
DB_USERNAME=
SECRET:=$(shell date +%s | sha256sum | base64 | head -c 32; echo)

all: build run

build:
	docker build -t $(MAINTAINERNAME)/$(IMAGENAME) .

run:
	docker run -d --name $(CONTAINERNAME) \
	-p 80:80 \
	-e POSTGRES_USERNAME=$(DB_USERNAME) \
	-e POSTGRES_PASSWORD=$(DB_PASSWORD) \
	-e POSTGRES_IP=$(DB_IP) \
	-e SECRET_KEY_BASE=$(SECRET) \
	$(MAINTAINERNAME)/$(IMAGENAME)
