#!/bin/bash

if [ -z "$(kubectl get namespaces | grep test)" ]
then 
  kubectl create namespace test
fi

kubectl apply -f pvc.yaml
kubectl apply -f deployment.yaml
