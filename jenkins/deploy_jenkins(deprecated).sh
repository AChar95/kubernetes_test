#! /bin/bash

kubectl apply -f ./PersistenVolumeClaim.yaml
kubectl apply -f ./pod.yaml
kubectl apply -f ./service.yaml

