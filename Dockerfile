# Use an appropriate base image
FROM docker/compose:1.29.2

# Copy the docker-compose.yml file into the working directory
COPY docker-compose.yml /app/docker-compose.yml

# Set working directory
WORKDIR /app

# Command to run `docker-compose up`
CMD ["docker-compose", "up"]
