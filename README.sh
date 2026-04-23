#!/usr/bin/env bash
# YADM
# ====
#
# Run:
# ```bash
# wget -qO - https://raw.githubusercontent.com/pkoch/yadm/master/README.sh | bash
# ```
#
# What's not included:
# * visudo: NOPASSWD
# * Confirm drivers (sudo dnf -y install akmod-nvidia)
# * Instal
#   * Firefox
#   * Yubico Auth (sudo flatpak install com.yubico.yubioath)
#   * Chrome (Download from Google's website)
#   * Dropbox (sudo flatpak install com.dropbox.Client)
#   * Spotify (sudo flatpak install com.spotify.Client)
#   * Emoji selector
#   * docker engine
#   * pass
#   * Clipboard manager (gpaste, Maccy)
#   * Syncthing
#     * Start systemd unit
#     * Carefully add the shared folders
#   * Obsidian
#   * Golang
#   * Rust (curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh)
# * Gnome extensions:
#   * Dash to dock (sudo dnf -y install gnome-shell-extension-dash-to-dock)
#   * System monitor (sudo dnf -y install gnome-shell-extension-system-monitor-applet)
# * Setup gpg key (gpg -d ~/Dropbox/gpg_keys.asc | gpg --import)
# * Setup keyboard (Caps, Compose)
# * Install drivers (sudo ubuntu-drivers install)
# * Show weeks in calendar
#
# TODO
# ====
# * Decomission crontab in favor of Syncthing.
# * Add Bolota under management again.
# * Decomission secrets in favor of file-snitch + pass
# * What do I want to do with vim? It's just rotting in there.
# * Review my ssh keys. Settle on one per machine, ideally TPM protected.

set -euo pipefail
cd

mkdir -p bin_install
export PATH="$PATH:$HOME/bin_install"
wget -qO ~/bin_install/yadm https://raw.githubusercontent.com/yadm-dev/yadm/master/yadm && chmod a+x ~/bin_install/yadm
yadm clone --bootstrap https://github.com/pkoch/yadm.git # This runs .config/yadm/bootstrap
rm -rf bin_install
