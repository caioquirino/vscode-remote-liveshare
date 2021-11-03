#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

apt-get update \
 && apt-get install -y \
    curl \
    wget \
    dumb-init \
    zsh \
    htop \
    locales \
    man \
    nano \
    git \
    procps \
    openssh-client \
    sudo \
    vim.tiny \
    lsb-release \
    jq

wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

apt-get update; \
  apt-get install -y apt-transport-https && \
  apt-get update && \
  apt-get install -y dotnet-runtime-5.0

rm -rf /var/lib/apt/lists/*

curl -fsSL https://code-server.dev/install.sh | sh