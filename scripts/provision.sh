#!/usr/bin/env bash

# Debug mode enabled
set -x

# install docker
which docker || {
  apt-get update
  apt-get install -y docker.io

  # Make Vagrant user part of the docker group
  usermod -aG docker vagrant
}

# Install docker-compose version 1.24.1
which docker-compose || {
  curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  chmod +x /usr/local/bin/docker-compose
}

# install nodejs
which node || {
  curl -sL https://deb.nodesource.com/setup_8.x | sudo bash -
  apt install -y nodejs
}
