let
  nero-key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBaWnT7mpLERhm3zIWglNy094a7F7d7cpEImLZYwwWoS nero@lil-maid";
  lilmaid-key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIB3AGZCBQaX4cW9808+BS2NfNt9MFFowm2angifL7zfs root@lil-maid";
in
{
  "nero-password.age-encrypted".publicKeys = [ nero-key lilmaid-key ];

  # Shadowsocks
  "gneg-ss.age".publicKeys = [ nero-key lilmaid-key ];

  # VPN related stuff
  "work-vpn-psk.age".publicKeys = [ nero-key lilmaid-key ];
  "work-vpn-ovpn.age".publicKeys = [ nero-key lilmaid-key ];
  "work-shadowsocks.age".publicKeys = [ nero-key lilmaid-key ];
}

