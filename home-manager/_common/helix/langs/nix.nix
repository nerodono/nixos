{ pkgs, ... }:
{
  lsp.nixd = {
    command = "${pkgs.nixd}/bin/nixd";
  };
  entries = [{
    name = "Nix";
    scope = "source.nix";
    injection-regex = "nix";
    file-types = ["nix"];
    comment-tokens = "#";
    indent = { tab-width = 2; unit = "  "; };
    language-servers = [ "nixd" ];
  }];
}
