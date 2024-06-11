{ lib, config, ... }:
{
  users.users.nero = {
    isNormalUser = true;
    home = "/home/nero";
    description = "Aleksandr";
    extraGroups = [ "wheel" "networkmanager" "docker" ];

    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBaWnT7mpLERhm3zIWglNy094a7F7d7cpEImLZYwwWoS nero@lil-maid"
    ];
    hashedPasswordFile = config.age.secrets.nero-password.path;

    uid = 1000;
  };
}
