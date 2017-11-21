# Web-блог reddit (microservices)

### Запуск контейнеров с помощью docker compose

docker-compose up -d

(необходим файл .env с переменными, пример env_example)

Список контейнеров

docker-compose ps

### Проверить запуск

Открыть в браузере ссылку http://адрес_хоста:9292

Написать пост


### Запуск контейнеров в docker swarm (infra в отдельном файле docker-compose.infra)
docker stack deploy --compose-file=<(docker-compose -f docker-compose.infra.yml \
 -f docker-compose.yml config 2>/dev/null)  DEV
