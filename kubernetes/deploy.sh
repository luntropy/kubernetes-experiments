#!/bin/bash

minikube image load flask-app-testing:latest 

kubectl apply -f ./flask_deployment.yaml
kubectl apply -f ./flask_service.yaml
kubectl apply -f ./flask_ingress.yaml

minikube addons enable ingress

