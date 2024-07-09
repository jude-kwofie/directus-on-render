# Simple Dockerfile to use docker-compose.yml
FROM docker:20.10.7-dind

# Install docker-compose
RUN apk add --no-cache py3-pip && \
    pip3 install docker-compose

# Copy docker-compose file to the container image
COPY docker-compose.yml /app/docker-compose.yml

WORKDIR /app

# Run docker-compose up
CMD ["docker-compose", "up"]
