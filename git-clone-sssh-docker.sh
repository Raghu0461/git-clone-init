#!/bin/bash

pwd
git clone https://github.com/Raghu0461/k8s-persistent-volumes.git
echo "list files after clone"
ls -l $(pwd)/k8s-persistent-volumes

sudo docker run  -d -v $(pwd)/k8s-persistent-volumes:/mnt nginx

echo "list runnign containers"
sudo docker ps