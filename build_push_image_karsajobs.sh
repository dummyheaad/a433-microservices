#! /bin/bash

# membuat docker image dari Dockerfile
docker build -t hypr27/karsajobs:latest .

# mengubah nama image agar sesuai dengan format GitHub Packages
docker tag hypr27/karsajobs:latest ghcr.io/dummyheaad/hypr27/karsajobs:latest

# login ke GitHub Packages dengan Personal Access Token (PAT)
echo $CR_PAT | docker login ghcr.io -u dummyheaad --password-stdin

# unggah image ke GitHub Packages
docker push ghcr.io/dummyheaad/hypr27/karsajobs:latest
