#! /bin/bash

# membuat docker image dari Dockerfile
docker build -t order-service:v1 .

# mengubah nama image agar sesuai dengan format GitHub Packages
docker tag order-service:v1 ghcr.io/dummyheaad/order-service:v1

# login ke GitHub Packages dengan Personal Access Token (PAT)
echo $CR_PAT | docker login ghcr.io -u dummyheaad --password-stdin

# unggah image ke GiHub Packages
docker push ghcr.io/dummyheaad/order-service:v1
