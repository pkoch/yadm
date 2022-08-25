#!/bin/bash
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages

sudo apt update

sudo apt install -y \
  curl \
  gh \
  git \
  git-crypt \
  htop \
  ripgrep \
  tree \
  vim \
;
