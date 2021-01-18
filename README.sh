#!/bin/bash
# YADM
# ====
# * Setup gpg key (gpg -d ~/Dropbox/gpg_keys.asc | gpg --import)
# * Setup ssh key (mkdir -p ~/.ssh; gpg -d ~/Dropbox/id_rsa.asc > .ssh/id_rsa && chmod 400 .ssh/id_rsa)
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
yadm clone --bootstrap https://github.com/pkoch/yadm.git # This runs .local/share/yadm/bootstrap
rm -rf bin_install
