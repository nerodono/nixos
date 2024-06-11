{ config, pkgs, ... }:
{
  imports = [
    ../_common/helix
    ../_common/git.nix
  ];

  home.username = "nero";
  home.homeDirectory = "/home/nero";

  home.stateVersion = "24.05";
  home.file = {
    ".cargo/config.toml" = {
      text = ''
        [net]
        git-fetch-with-cli = true 

        [target.x86_64-unknown-linux-gnu] 
        linker = "${pkgs.clang}/bin/clang" 
        rustflags = ["-C", "link-arg=--ld-path=${pkgs.mold}/bin/mold"]
      '';
    };
  };

  programs.home-manager.enable = true;
}
