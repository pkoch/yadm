#age
#bitwarden-cli
#curl
#entr
#gist
#gnupg
#gnused
#hadolint
#jq
#podman
#podman-compose
#psutils
#pv
#vim
#watch
#wget
#xxHash
#xz
#zstd

# Bolota Brewfile
brew "asciinema"
brew "awscli"
brew "bash"
brew "bash-completion@2"
brew "cloudflared"
brew "devcontainer"
brew "docker-credential-helper"
brew "docker-credential-helper-ecr"
brew "fzf"
brew "gh"
brew "git"
brew "git-absorb"
brew "git-crypt"
brew "git-lfs"
brew "gnu-sed"
brew "go"
brew "hashicorp/tap/terraform"
brew "nmap"
brew "node"
brew "nodenv"
brew "pass"
brew "pkoch/tap/file-snitch"
brew "pnpm"
brew "pre-commit"
brew "ripgrep"
brew "shellcheck"
brew "shfmt"
brew "sops"
brew "telnet"
brew "uv"
brew "yarn"
brew "ykman"
brew "yq"
brew "zig"

cask "1password-cli"
cask "claude-code"
cask "codex"
cask "ovh/tap/ovhcloud-cli"

go "golang.org/x/tools/gopls"

if OS.linux?
  brew "ffmpeg"
  brew "ramalama"
  brew "tealdeer"
  brew "trash-cli"
  brew "unar"

  flatpak "be.alexandervanhee.gradia"
  flatpak "com.discordapp.Discord"
  flatpak "com.github.PintaProject.Pinta"
  flatpak "com.github.tchx84.Flatseal"
  flatpak "com.github.zocker_160.SyncThingy"
  flatpak "com.google.Chrome"
  flatpak "com.mattjakeman.ExtensionManager"
  flatpak "com.onepassword.OnePassword", remote: "https://downloads.1password.com/linux/flatpak/repo/"
  flatpak "dev.zed.Zed"
  flatpak "io.gitlab.adhami3310.Impression"
  flatpak "md.obsidian.Obsidian"
  flatpak "org.jeffvli.feishin"
  flatpak "org.mozilla.firefox"
  flatpak "org.musicbrainz.Picard"
  flatpak "org.signal.Signal"
  flatpak "org.videolan.VLC"
  flatpak "page.tesk.Refine"
end

if OS.mac?
  brew "mas"
  brew "lima"
  brew "lima-additional-guestagents"
  brew "slp/krun/krunkit"
  brew "jwbargsten/misc/defbro"

  cask "1password"
  cask_args appdir: "~/Applications"
  cask "bitwarden"
  cask "discord"
  cask "firefox"
  cask "ghostty"
  cask "google-chrome"
  cask "maccy"
  cask "obsidian"
  cask "pearcleaner"
  cask "pinta"
  cask "stats"
  cask "syncthing-app"
  cask "telegram"
  cask "the-unarchiver"
  cask "vlc"
  cask "whatsapp"
  cask "yubico-authenticator"
  cask "zed"
  # TODO: See ~/Applications
  # TODO: See /Applications

  mas "1Blocker", id: 1365531024
  mas "Color Picker", id: 1545870783
  mas "Keynote", id: 409183694
  mas "Numbers", id: 409203825
  mas "Pages", id: 409201541
  mas "Xcode", id: 497799835
end
