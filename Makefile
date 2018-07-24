CONTAINER=docker-node

# Add target names here that conflict with a file targets
.PHONY:

# All targets and commands to run by default

# Clean removes all generated artifacts

# Generate and install artifacts
database: 
	docker exec -it $(CONTAINER) node_modules/.bin/sequelize db:migrate

migration:
		docker exec -it $(CONTAINER) node_modules/.bin/sequelize model:generate