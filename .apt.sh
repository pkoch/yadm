#!/bin/bash
sudo apt update

sudo rm -f /etc/apt/sources.list.d/swi-prolog-ubuntu-*
sudo apt-add-repository -y ppa:swi-prolog/devel

sudo apt install \
  chrome-gnome-shell \
  curl \
  git \
  git-crypt \
  htop \
  ripgrep \
  swi-prolog-nox \
  tree \
  vim \
;

# asdf Python
sudo apt install \
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
  python-openssl \
  tk-dev \
  wget \
  xz-utils \
  zlib1g-dev \
;
