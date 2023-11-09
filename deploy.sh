docker network create flask

docker build -t flask-app -f Dockerfile . --no-cache

docker build -t nginx -f DockerfileNginx . --no-cache

docker run -d --network flask --name flask-app flask-app

docker run -d -p 80:80 --network flask --name nginx nginx