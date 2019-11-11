#!/bin/bash

echo "Please enter the name of the cluster"
read $clusterName
echo "Please enter the name of the machine type you wish to use, e.g. f1-micro, please ensure there are no spaces"
read $machineType
echo "Please enter the number of node you wish to have in the cluster"
read $noNodes
echo "Please enter the zone you wish to use"
read $zone

echo"-------------"
echo "The following settings have been accepted: cluster name -> $clusterName, machine type -> $machineType, number of nodes -> $noNodes, zone -> $zone"
echo "------------"
echo "Are these values correct?"
echo "Y/n"
read $userResponse
case $userResponse in
	Y) echo "implementing the requested cluster size"
		gcloud cluster containers create -m $machineType -num-nodes $noNodes --zone $zone $clusterName;
	y) echo "Implementing the requested cluster size"
		gcloud cluster containers create -m $machineType -num-nodes $noNodes --zone $zone $clusterName;
	N) echo "which value is incorrect?"
	   echo "1 -> clusterName, 2 -> machineType, 3 -> Number of Nodes, 4 -> zone, 5 -> all";
	   read $userError
	   case $userError in 
		   1) 
