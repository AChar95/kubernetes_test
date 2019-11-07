# kubernetes_test
A simple kubernetes deployment, consisting of a frontend, load balancer and jenkins

Currently the deployment.sh is used to deploy all of the different containers and pods to the kubernetes cluster, in the correct order. There are plans for this script to migrate to a kustomization.yaml file for each deployment. This will be found in the testing branch

**DO NOT RUN ANY FILE WHICH FEATURES THE (DEPRECATED) TAG e.g. _filename_(DEPRECATED)._extension_**
These files are from previous versions of the deployment and are simply there for learning purpose. Files listed below will describe if they will work or not with the current script or what difference there is betweent the latest version.

**DO NOT RUN THE initial_setup.sh FILE IF YOU ARE NOT USING GCP**
