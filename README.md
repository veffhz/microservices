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



### Деплой reddit в кластер Kubernetes

gcloud container clusters get-credentials $cluster --zone $zone --project $project 

(или minikube start для локального кластера)

cоздание dev namespace:

kubectl apply -f dev-namespace.yml

деплой приложения в namespace dev:

kubectl apply -f ../kube_reddit -n dev


### Helm

установка:

kubectl apply -f tiller.yml

запуск: 

helm init --service-account tiller

проверка:

kubectl get pods -n kube-system --selector app=helm

установка chart: 

helm install `<chart-path>` `<release-name>`

проверка: helm ls


### Установка Gitlab Omnibus

helm repo add gitlab https://charts.gitlab.io

helm fetch gitlab/gitlab-omnibus --version 0.1.36 --untar

cd gitlab-omnibus

кастомизируем gitlab-omnibus/values.yaml, 
gitlab-omnibus/templates/gitlab/gitlab-svc.yaml,
gitlab-omnibus/templates/gitlab-config.yaml,
gitlab-omnibus/templates/ingress/gitlab-ingress.yaml

helm install --name gitlab . -f values.yaml

get external-ip: kubectl get service -n nginx-ingress nginx

add to hosts: echo "`<external-ip>` gitlab-gitlab staging production" >> /etc/hosts

open: http://gitlab-gitlab



