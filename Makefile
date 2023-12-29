# Start the Docker containers
up:
	docker-compose up -d

# Stop the Docker containers
down:
	docker-compose down

# Rebuild the Docker containers
build:
	docker-compose build

# Run Rails DB migrate
migrate:
	docker-compose exec api rails db:migrate

rubocop:
	docker-compose exec api bundle exec rubocop

bundle-install:
	docker-compose exec api bundle install

# Open a Rails console
console:
	docker-compose exec api rails console

# Access the PostgreSQL CLI
psql:
	docker-compose exec db psql -U mentalhealth -d mentalhealth_development

psql-test:
	docker-compose exec test_db psql -U myapp -d mentalhealth_test
