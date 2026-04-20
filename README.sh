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
# * What do I want to do with vim? It's just rotting in there.
# * Review my ssh keys. Settle on one per machine, ideally TPM protected.
# * Fill Brewfile
# * Review the split between profile (env vars, including PATH) and bashrc (auto complete and shell stuff)
# * Add a helper function to reload all autocomplete things.
# * Add a helper function that checks if the segment to be added to PATH is already there and bails unless we need to add it.
# * What should I do with crontab? launchctl and systemd unit? Get rid of Dropbox?
# * Add Bolota under management again.

set -euo pipefail
cd

mkdir -p bin_install
export PATH="$PATH:$HOME/bin_install"
wget -qO ~/bin_install/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && chmod a+x ~/bin_install/yadm
yadm clone --bootstrap https://github.com/pkoch/yadm.git # This runs .config/yadm/bootstrap
rm -rf bin_install
