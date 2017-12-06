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


### Deployment-манифесты приложений:

microservices/kubernetes/post-deployment.yml

microservices/kubernetes/comment-deployment.yml

microservices/kubernetes/ui-deployment.yml

microservices/kubernetes/mongo-deployment.yml


#### Прохождение Kubernetes the hard way 

https://github.com/kelseyhightower/kubernetes-the-hard-way

microservices/kubernetes/kubernetes_the_hard_way


#### Деплой reddit в кластер Kubernetes

gcloud container clusters get-credentials $cluster --zone $zone --project $project 
(или minikube start для локального кластера)

cоздание dev namespace:
kubectl apply -f dev-namespace.yml

деплой приложения в namespace dev:
kubectl apply -f ../kube_reddit -n dev




