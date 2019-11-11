#! /bin/bash

kubectl create -f ./jenkins/ -R
kubectl create -f ./web/ -R
kubectl create -f ./loadBalancer/ -R

