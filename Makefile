# Start the Docker containers
up:
	docker-compose up -d

# Stop the Docker containers
down:
	docker-compose down

# Rebuild the Docker containers
build:
	docker-compose build

rubocop:
	docker-compose exec api bundle exec rubocop

bundle-install:
	docker-compose exec api bundle install

# Open a Hanami console
console:
	docker-compose exec api hanami console

action-generate:
	docker-compose exec api bundle exec hanami generate action $(action_name)

rspec:
	docker-compose exec api bundle exec rspec $(spec_name)

db-migrate:
	docker-compose exec api bundle exec rake db:migrate

db-migrate-test:
	docker-compose exec api env HANAMI_ENV=test bundle exec rake db:migrate

# Access the PostgreSQL CLI
psql:
	docker-compose exec db psql -U mentalhealth -d mentalhealth_development

psql-test:
	docker-compose exec test_db psql -U myapp -d mentalhealth_test
