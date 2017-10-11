# microservices

### Сборка контейнеров с приложением

docker pull mongo:latest

docker build -t <your-login>/post:1.0 ./post-py

docker build -t <your-login>/comment:1.0 ./comment

docker build -t <your-login>/ui:1.0 ./ui


### Запуск контейнеров с приложением

docker network create reddit

docker run -d --network=reddit \
--network-alias=post_db --network-alias=comment_db mongo:latest

docker run -d --network=reddit \
--network-alias=post <your-login>/post:1.0

docker run -d --network=reddit \
--network-alias=comment <your-login>/comment:1.0

docker run -d --network=reddit \
-p 9292:9292 <your-login>/ui:1.0

### Проверить запуск

Написать пост
