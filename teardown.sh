#!/bin/bash

echo "Deleting Twoge app..."
kubectl delete -f service.yml
kubectl delete -f deployment.yml

echo "Deleting MySQL..."
kubectl delete -f mysql-service.yml
kubectl delete -f mysql-deployment.yml

echo "Deleting config map..."
kubectl delete -f config-map.yml

echo "Deleting secrets..."
kubectl delete -f secrets.yml

echo "All resources deleted. 🔥"

#always change chmod +x
#run with ./teardown.sh