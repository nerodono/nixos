{
  config,
  lib,
  pkgs,
  flake-inputs,
  ...
}:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.overlays = [
    flake-inputs.fenix.overlays.default
  ];

  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix

      ./users
      ./services
      ./software
      ./work

      ./unfree-predicate.nix
      ./networking
      ./sound.nix
      ./agenix.nix
    ];

  time.timeZone = "Europe/Moscow";

  boot.kernelPackages = pkgs.linuxKernel.packages.linux_zen;
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.networkmanager.enable = true;
  system.stateVersion = "24.05";
}

