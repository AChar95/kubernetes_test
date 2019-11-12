# kubernetes_test
A simple kubernetes deployment, consisting of a frontend, load balancer and jenkins

Currently the deploy.sh is used to deploy all of the different containers and pods to the kubernetes cluster, in the **correct order**. There are plans for this script to migrate to a kustomization.yaml file for each deployment. This will be found in the testing branch

**DO NOT RUN ANY FILE WHICH FEATURES THE (DEPRECATED) TAG e.g. _filename_(DEPRECATED)._extension_**
These files are from previous versions of the deployment and are simply there for learning purpose. Files listed below will describe if they will work or not with the current script or what difference there is betweent the latest version.

	- deploy_jenkins.sh  :- This file will work independently of the deploy.sh in the root folder of this repository, it will deploy all of the required parts for the jenkins container, including storage
	- deploy_nginx.sh :- This file will work independently of the deploy.sh in the root folder of this repository, it will deploy an nginx load balance/reverse proxy which will direct traffic according to configuration_map.yaml file
	- deploy_web.sh :- This file will work independently of the deploy.sh in the root folder of this repository, it will deploy a simple pug website taken from the docker image AChar95/kuberneteslanding:1

**DO NOT RUN THE initial_setup.sh FILE IF YOU ARE NOT USING GCP**

# Current deployment instructions:
## GCP
	- for the command below the -m is short for the --machine-type -z is short for the --zone
	- The below machine type and zones are not complusory, though it is advised to use a machine which has a reasonable amount of ram, this will allow for all the pods to be deloyed
	- run: gcloud container clusters create -m n1-standard-1 -z us-central1-b --num-nodes 4 k8-test
	- then run ./deploy.sh
