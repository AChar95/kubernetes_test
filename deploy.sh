#! /bin/bash

./jenkins/deploy_jenkins.sh
./web/deploy_web.sh
./loadBalancer/deploy_nginx.sh
