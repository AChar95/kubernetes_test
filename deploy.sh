#! /bin/bash

kubectl create -f ./jenkins/ -R
kubectl create -f ./loadBalancer/ -R
kubectl create -f ./web/ -R
