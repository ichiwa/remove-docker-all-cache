#!/bin/bash

docker rm $(docker ps -a -q --filter status=exited);
docker rmi $(docker images -q);
docker volume rm $(docker volume ls | awk '{print $2}');
rm -rf ~/Library/Containers/com.docker.docker/Data/* ;
