{ config, pkgs, lib, ... }:
{
  services.desktopManager.plasma6.enable = true;
  services.displayManager.sddm = {
    enable = true;
    enableHidpi = true;
    wayland.enable = true;
  };

  services.xserver.xkb.layout = "us";

  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    plasma-browser-integration
    konsole
    oxygen
  ];
}
