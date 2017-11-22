#!/bin/bash

docker-machine create --driver google \
--google-project $1 \
--google-zone europe-west1-b \
--google-machine-type g1-small \
--google-machine-image https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/family/ubuntu-1604-lts \
$2
