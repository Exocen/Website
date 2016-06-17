MAINTAINERNAME=exo
IMAGENAME=rorimage
DB_NAME=pg
CONTAINERNAME=ROR
DB_PASSWORD=
DB_USERNAME=postgres
SECRET:=$(shell date +%s | sha256sum | base64 | head -c 32; echo)

all: build run

build:
	docker build -t $(MAINTAINERNAME)/$(IMAGENAME) .

run:
	docker run -d --name $(CONTAINERNAME) \
	-p 80:80 -p 443:443 \
	--link $(DB_NAME):$(DB_NAME) \
	-e POSTGRES_USERNAME=$(DB_USERNAME) \
	-e POSTGRES_PASSWORD=$(DB_PASSWORD) \
	-e POSTGRES_IP=$(DB_NAME) \
	-e SECRET_KEY_BASE=$(SECRET) \
	$(MAINTAINERNAME)/$(IMAGENAME)

dbd:
	docker run --name $(DB_NAME) -e POSTGRES_PASSWORD=$(DB_PASSWORD) -d postgres
	# docker exec pg pg_dump -U postgres -f /var/lib/postgresql/data/backup.sql
	# cd /etc/ssl/certs
	# openssl dhparam -dsaparam -out dhparam.pem 4096
	# git clone https://github.com/letsencrypt/letsencrypt
	# export TERM=xterm
	# ./letsencrypt-auto --dry-run certonly -a webroot -w /app/public/ -d sample.com -d www.sample.com  --agree-dev-preview --agree-tos --rsa-key-size 4096 --register-unsafely-without-email
	# ./letsencrypt-auto --dry-run renew
