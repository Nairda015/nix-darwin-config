{ pkgs, self, ... }:

{
  nixpkgs.config.allowUnfree = true;
  nixpkgs.hostPlatform = "aarch64-darwin";

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  nix.settings.allowed-users = [
    "root"
    "adrianfranczak"
  ];

  users.users.adrianfranczak.home = "/Users/adrianfranczak";

  system.primaryUser = "adrianfranczak";

  environment.systemPackages = [ ];

  #used for all GUI apps 
  homebrew = {
    enable = true;
    taps = [ "homebrew/bundle" ];
    casks = [
      "rectangle"
      "maccy"
      "wezterm"
      "obs"
      "jetbrains-toolbox"
      "visual-studio-code@insiders"
    ];
  };

  system.configurationRevision = self.rev or self.dirtyRev or null;
  system.stateVersion = 6;
}
