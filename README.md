Dockerized Strapi + PostgreSQL + Nginx Setup

Dockerized setup for running Strapi, PostgreSQL, and Nginx reverse proxy on a shared Docker network.

1. Create Docker Network

Create a custom Docker network for all services:

docker network create strapi-net

2. Configure docker-compose.yml

The docker-compose.yml includes:

PostgreSQL (database)

Strapi (application container)

Nginx (reverse proxy for port 80 → 1337)

All containers are connected to the same network: strapi-net.

3. Build Strapi Image

Use the provided Dockerfile to create a Strapi image:

docker build -t strapi-app .

4. Start All Services

Run all containers using docker-compose:

docker-compose up -d

5. Access Strapi Admin

Once all services are running, open:

http://localhost/admin
