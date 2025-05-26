app-setup:
	docker-compose run --rm app make setup

compose:
	docker compose up -d

compose-logs:
	docker compose logs -f

compose-down:
	docker compose down --remove-orphans || true

compose-clear:
	docker compose down -v --remove-orphans || true

compose-stop:
	docker compose stop || true

compose-restart:
	docker compose restart

compose-setup: compose-down app-setup

compose-ci:
	docker compose --file docker-compose.yml up --abort-on-container-exit