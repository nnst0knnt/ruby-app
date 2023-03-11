build:
	docker compose build
	docker-compose run api rake db:create
	make up
up:
	docker compose up -d
down:
	docker compose down
api-sh:
	docker compose run api sh
app-sh:
	docker compose run app sh
db-sh:
	docker compose run db sh
