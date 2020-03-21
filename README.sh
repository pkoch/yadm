#!/bin/bash
# YADM
# ====
# ssh target 'curl https://github.com/pkoch/yadm/blob/master/README.sh | bash'
set -xeuo pipefail
cd

files="$(find . -mindepth 1)"
tar czf old_contents.tgz $files
rm -rf $files

mkdir bin_install
export PATH="$PATH:$HOME/bin_install"
curl -fLo ~/bin_install/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && chmod a+x ~/bin_install/yadm
yadm clone --bootstrap https://github.com/pkoch/yadm.git
rm -rf bin_install
