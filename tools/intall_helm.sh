#!/bin/bash

cd ~/microservices/kubernetes && kubectl apply -f tiller.yml

helm init --service-account tiller

kubectl get pods -n kube-system --selector app=helm
