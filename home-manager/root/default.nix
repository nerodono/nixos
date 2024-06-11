{ config, pkgs, ... }:
{
  imports = [
    ../_common/helix
    ../_common/git.nix
  ];

  home.username = "root";
  home.homeDirectory = "/root";

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
