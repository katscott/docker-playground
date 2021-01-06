ifeq (status,$(firstword $(MAKECMDGOALS)))
  STATUS_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
  $(eval $(STATUS_ARGS):;@:)
endif

.PHONY: clean
clean:
	ls -d .volumes/consul/data/* | grep -v .gitignore | xargs rm -rfd
	ls -d .volumes/mkcert-data/* | grep -v .gitignore | xargs rm -rfd

.PHONY: down
down:
	docker-compose down

.PHONY: up
up:
	docker-compose up

.PHONY: status
status:
	docker inspect --format "{{json .State.Health }}" `docker-compose ps -q ${STATUS_ARGS}` | jq .Status
