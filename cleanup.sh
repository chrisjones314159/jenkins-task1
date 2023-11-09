docker rm -f $(docker ps -a -q)
docker rmi -f $(docker images -a -q)
docker volume rm -f $(docker volume ls -q)
docker network rm -f $(docker network ls -q)

docker builder prune --all --force

docker images -a
docker network ls
docker ps -a
docker volume ls