{ config, pkgs, lib, ... }:
{
  services.openvpn.servers = {
    hft = {
      autoStart = false;
      config = ''
        config ${config.age.secrets.work-vpn-ovpn.path}
        askpass ${config.age.secrets.work-vpn-psk.path}
      '';
      updateResolvConf = true;
    };
  };

  systemd.services.hft-shadowsocks = {
    wantedBy = lib.mkForce [];
    partOf = [ "openvpn-hft.service" ];
    after = [ "network.target" ];
    description = "Start corporate shadowsocks server";

    serviceConfig = {
      Type = "simple";
      User = "root";
      ExecStart = ''${pkgs.shadowsocks-rust}/bin/sslocal --config ${config.age.secrets.work-shadowsocks.path}'';
    };
  };
  systemd.services.openvpn-hft.wants = [ "hft-shadowsocks.service" ];
}
