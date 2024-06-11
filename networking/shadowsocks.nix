{ pkgs, config, lib, ... }:
let
  getSecret = name: config.age.secrets."${name}".path;
  mkSSService = { cfg, overlay ? {}, description ? "Shadowsocks proxy server" }: {
    wantedBy = lib.mkForce [];
    after = [ "network.target" ];

    description = description;

    serviceConfig = {
      Type = "simple";
      User = "root";
      ExecStart = ''${pkgs.shadowsocks-rust}/bin/sslocal --config ${cfg}'';
    };
  } // overlay;
in
{
  systemd.services.gneg-ss = mkSSService {
    cfg = getSecret "gneg-ss";
    description = "Gneg Shadowsocks server";
  };
}
