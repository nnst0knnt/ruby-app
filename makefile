build:
	sudo docker-compose build --force-rm --no-cache
	make up
	# bundle install
	# rake db:create
	docker-compose ps
up:
	docker compose up -d
down:
	docker-compose down
	if docker images | grep matching; then docker rmi -f `docker images "matching_*" -q`; fi
	if docker volume ls -f NAME=matching | grep matching; then docker volume rm `docker volume ls -f NAME=matching -q`; fi

api-bash:
	docker compose exec api bash
app-bash:
	docker compose run app sh
db-bash:
	docker compose exec db bash
db-cli:
	docker compose run cli
