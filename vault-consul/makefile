clean:
	ls -d .volumes/consul/data/* | grep -v .gitignore | xargs rm -rfd
	ls -d .volumes/mkcert-data/* | grep -v .gitignore | xargs rm -rfd

down:
	docker-compose down

up:
	docker-compose up