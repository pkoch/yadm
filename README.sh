#!/bin/bash
# YADM
# ====
# * Setup gpg key (probably from Dropbox)
# * Setup ssh key (probably from Dropbox)
# * Setup keyboard (Caps, Compose) 
# * Setup touchpad scroll direction to natural
# * sudo ubuntu-drivers install
# * Instal
#   * Chromium
#   * Dropbox
#   * Firefox
#   * Skype
#   * Spotify
# * wget -qO - https://raw.githubusercontent.com/pkoch/yadm/master/README.sh | bash
set -euo pipefail
cd

mkdir bin_install
export PATH="$PATH:$HOME/bin_install"
wget -qO ~/bin_install/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && chmod a+x ~/bin_install/yadm
yadm clone --bootstrap https://github.com/pkoch/yadm.git # This runs .config/yadm/bootstrap
rm -rf bin_install
