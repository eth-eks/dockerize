Commands for build:

docker login ghcr.io -u <your_github_username> 

docker buildx create --use

docker buildx build --platform linux/amd64,linux/arm64 --push -t ghcr.io/eth-eks/dockerize:0.6.1 .
