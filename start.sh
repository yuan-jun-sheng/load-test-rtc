#!/bin/bash

if [ -z "$(kubectl get namespaces | grep test)" ]
then 
  kubectl create namespace test
fi

if [ -z "$(kubectl get pvc -n test | grep rtcloadtest)" ]
then
  kubectl apply -f pvc.yaml
fi
kubectl apply -f deployment.yaml
