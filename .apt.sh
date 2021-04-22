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


# asdf Python
sudo apt install -y \
  build-essential  \
  curl \
  git \
  libbz2-dev \
  libffi-dev \
  liblzma-dev \
  libncurses5-dev \
  libncursesw5-dev \
  libreadline-dev \
  libsqlite3-dev \
  libssl-dev \
  llvm \
  make \
  tk-dev \
  wget \
  xz-utils \
  zlib1g-dev \
;
