#!/usr/bin/env bash
# YADM
# ====
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
#   * VS Code (manual download)
#     * Sync settings
#   * pass
#   * Clipboard manager (gpaste, Maccy)
#   * Syncthing
#     * Start systemd unit
#     * Carefully add the shared folders
#   * Obsidian
#   * Golang
#   * Rust (curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh)
#   * fnm (curl -fsSL https://fnm.vercel.app/install | bash)
#   * rbenv (curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash)
#   * pyenv (curl -fsSL https://pyenv.run | bash)
# * Gnome extensions:
#   * Dash to dock (sudo dnf -y install gnome-shell-extension-dash-to-dock)
#   * System monitor (sudo dnf -y install gnome-shell-extension-system-monitor-applet)
# * Setup gpg key (gpg -d ~/Dropbox/gpg_keys.asc | gpg --import)
# * Setup keyboard (Caps, Compose)
# * Install drivers (sudo ubuntu-drivers install)
# * Show weeks in calendar
# * https://install.determinate.systems/
# * wget -qO - https://raw.githubusercontent.com/pkoch/yadm/master/README.sh | bash
#
# http://mywiki.wooledge.org/DotFiles

set -euo pipefail
cd

mkdir -p bin_install
export PATH="$PATH:$HOME/bin_install"
wget -qO ~/bin_install/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && chmod a+x ~/bin_install/yadm
yadm clone --bootstrap https://github.com/pkoch/yadm.git # This runs .config/yadm/bootstrap
rm -rf bin_install
