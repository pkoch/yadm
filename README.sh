#!/bin/bash
# YADM
# ====
# * Instal
#   * Chromium
#   * Dropbox
#   * Firefox
#   * Spotify
#   * https://extensions.gnome.org/extension/1162/emoji-selector/
#   * VS Code
# * Setup gpg key (gpg -d ~/Dropbox/gpg_keys.asc | gpg --import)
# * Setup keyboard (Caps, Compose)
# * sudo ubuntu-drivers install
# * wget -qO - https://raw.githubusercontent.com/pkoch/yadm/master/README.sh | bash
set -euo pipefail
cd

mkdir bin_install
export PATH="$PATH:$HOME/bin_install"
wget -qO ~/bin_install/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && chmod a+x ~/bin_install/yadm
yadm clone --bootstrap https://github.com/pkoch/yadm.git # This runs .config/yadm/bootstrap
rm -rf bin_install
