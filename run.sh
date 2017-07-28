#!/bin/sh

docker network create proxy
cd traefik
docker-compose up -d
cd ../project
docker-compose up -d
sleep 5
curl -H Host:nginx.project.docker localhost
