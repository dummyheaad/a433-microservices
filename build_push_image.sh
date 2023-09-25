# membuat docker image dari Dockerfile
docker build -t item-app:v1 .

# melihat daftar image di lokal
docker images

# mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/dummyheaad/item-app:v1

# login ke GitHub Packages dengan Personal Access Token
echo $CR_PAT | docker login ghcr.io -u dummyheaad --password-stdin

# unggah image ke GitHub Packages
docker push ghcr.io/dummyheaad/item-app:v1
