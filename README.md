# Web-блог reddit (microservices)

### Сборка контейнеров с приложением

docker pull mongo:latest

docker build -t `your-login`/post:1.0 ./post-py

docker build -t `your-login`/comment:1.0 ./comment

docker build -t `your-login`/ui:1.0 ./ui (или контейнер с меньшим размером на базе alpine ./ui-alpine)


### Запуск контейнеров с приложением

docker network create reddit

docker run -d --network=reddit \
--network-alias=post_db --network-alias=comment_db mongo:latest

docker run -d --network=reddit \
--network-alias=post `your-login`/post:1.0

docker run -d --network=reddit \
--network-alias=comment `your-login`/comment:1.0

docker run -d --network=reddit \
-p 9292:9292 `your-login`/ui:1.0


### Запуск контейнеров с помощью docker compose

docker-compose up -d

docker-compose ps

(необходим файл .env с переменными, пример env_example)

### Проверить запуск

Открыть в браузере ссылку http://адрес_хоста:9292

Написать пост
