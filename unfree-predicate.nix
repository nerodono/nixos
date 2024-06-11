{ lib, ... }:
let
  nonFreeSoftware = [
    "discord"
    "slack"
    "steam"
  ];

  pred = pkg: true;
in
{
  nixpkgs.config.allowUnfreePredicate = pkg: pred pkg || builtins.elem (lib.getName pkg) nonFreeSoftware;
}
