
.PHONY: help up down restart status logs health s3-list s3-create clean

COMPOSE := docker compose
ENDPOINT := http://localhost:4566
REGION := eu-north-1

AWS_LOCAL := AWS_ACCESS_KEY_ID=test AWS_SECRET_ACCESS_KEY=test AWS_DEFAULT_REGION=$(REGION) aws --endpoint-url=$(ENDPOINT)

help:
	@echo 'Targets: up down restart status logs health s3-list s3-create clean'

up:
	$(COMPOSE) up -d

down:
	$(COMPOSE) down

restart:
	$(COMPOSE) restart

status:
	$(COMPOSE) ps

logs:
	$(COMPOSE) logs -f localstack

health:
	curl -fsS $(ENDPOINT)/_localstack/health

s3-list:
	$(AWS_LOCAL) s3 ls

s3-create:
	$(AWS_LOCAL) s3 mb s3://coderco-localstack-lab --region $(REGION)

clean:
	$(COMPOSE) down
	rm -rf ./data
