#!/bin/bash

echo "Please enter the name of the kubernetes cluster you wish to create"
READ $clusterName
echo "Please enter the name of the machine type you wish to use, e.g. f1-micro, please ensure there are no spaces"
READ $machineType
echo "Please enter the number of node you wish to have in the cluster"
READ $noNodes
echo "Please enter the zone you wish to use"
READ $zone
