#!/bin/bash

echo "Applying secrets..."
kubectl apply -f secrets.yml

echo "Applying config map..."
kubectl apply -f config-map.yml

echo "Deploying MySQL..."
kubectl apply -f mysql-deployment.yml
kubectl apply -f mysql-service.yml

echo "Deploying Twoge app..."
kubectl apply -f deployment.yml
kubectl apply -f service.yml

echo "All resources applied! 🚀"
