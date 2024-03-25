setup:
	@make build
	@make up 
	@make composer-update

build:
	docker-compose build --no-cache --force-rm

down:
	docker-compose down

up:
	docker-compose up -d

open-container:
	docker exec -it digital-agency bash

composer-update:
	docker exec digital-agency bash -c "composer update"

data:
	docker exec digital-agency bash -c "php artisan migrate"
	docker exec digital-agency bash -c "php artisan db:seed"