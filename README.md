# microservices

## web-приложение reddit (блог).

#### Сборка контейнера с приложением

docker build -t reddit:latest

#### Запуск контейнера с приложением

docker run --name reddit -d --network=host reddit:latest

#### Проверить запуск

docker-machine ls

Открыть в браузере ссылку http://адрес_хоста:9292
