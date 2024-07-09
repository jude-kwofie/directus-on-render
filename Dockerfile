# Use Docker image with Docker + Docker Compose installed
FROM docker:20.10.7-dind

# Install dependencies including gcc and other Python build dependencies
RUN apk add --no-cache \
    python3 \
    py3-pip \
    gcc \
    musl-dev \
    libffi-dev \
    openssl-dev \
    make \
    && pip3 install docker-compose

# Copy docker-compose file to the container image
COPY docker-compose.yml /app/docker-compose.yml

WORKDIR /app

# Run docker-compose up
CMD ["docker-compose", "up"]
