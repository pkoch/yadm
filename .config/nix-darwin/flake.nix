{
  description = "gato's Darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs }:
  let
    configuration = { pkgs, ... }: {
      # Delegate Unix-y packages to home-manager as much as possible, but keep
      # the system-level macOS ones here.
      environment.systemPackages = [
        pkgs.stats
      ];

      # Auto upgrade nix package and the daemon service.
      services.nix-daemon.enable = true;
      nix = {
        package = pkgs.nix;
        gc.automatic = true;
        optimise.automatic = true;
        settings = {
          # Necessary for using flakes on this system.
          auto-optimise-store = true;
          experimental-features = "nix-command flakes";
        };
      };

      # Create /etc/zshrc that loads the nix-darwin environment.
      programs.zsh.enable = true;
      programs.bash.enable = true;

      system = {
        # Set Git commit hash for darwin-version.
        configurationRevision = self.rev or self.dirtyRev or null;

        keyboard = {
          enableKeyMapping = true;
          remapCapsLockToControl = true;
        };
      };

      # Used for backwards compatibility, please read the changelog before changing.
      # $ darwin-rebuild changelog
      system.stateVersion = 4;

      # The platform the configuration will be used on.
      nixpkgs.hostPlatform = "aarch64-darwin";

      users.users.pkoch = {
        name = "pkoch";
        home = "/Users/pkoch";
      };

      security.pam.enableSudoTouchIdAuth = true;
    };
  in
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#gato
    darwinConfigurations."gato" = nix-darwin.lib.darwinSystem {
      modules = [
        configuration
        # home-manager is not included on purpose. Just because I found it
        # easier to manage the two separately.
      ];
    };

    # Expose the package set, including overlays, for convenience.
    darwinPackages = self.darwinConfigurations."gato".pkgs;
  };
}
