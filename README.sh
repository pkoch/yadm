#!/bin/bash
# YADM
# ====
# ssh target 'curl https://github.com/pkoch/yadm/blob/master/README.sh | bash'
set -euo pipefail

cd
files="$(find . -mindepth 1)"
echo $files | xargs tar czf old_contents.tgz
echo $files | xargs rm -rf
mkdir bin_install
export PATH="$PATH:$HOME/bin_install"
curl -fLo ~/bin_install/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && chmod a+x ~/bin_install/yadm
yadm clone --bootstrap https://github.com/pkoch/yadm
rm -rf bin_install
