#!/bin/bash -e

export DB_FILE=$1
export PROJECT_FILE=$2

docker-compose -f docker-compose.yml build
docker-compose -f docker-compose.yml up -d

until docker logs anonymizer | grep "anonymizer finished" ; do
  >&2 echo "waiting...."
  sleep 1
done

docker-compose -f docker-compose.yml rm -fsv
