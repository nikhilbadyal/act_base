FROM ubuntu:jammy
RUN apt-get update && apt-get upgrade -yq 
RUN  apt-get install -y curl
RUN  curl -sL https://deb.nodesource.com/setup_16.x | bash - 
RUN  apt-get install  -y nodejs
RUN  curl -L "https://github.com/docker/compose/releases/download/v2.10.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN  chmod +x /usr/local/bin/docker-compose
# docker buildx build -t nikhilbadyal/act-base:latest --platform linux/amd64 .
# docker run --platform linux/amd64 -it nikhilbadyal/act-base:latest

