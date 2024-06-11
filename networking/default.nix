{
  imports = [
    ./firewall.nix
    ./shadowsocks.nix
  ];
  networking.hostName = "lil-maid";
}
