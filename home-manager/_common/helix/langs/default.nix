{ pkgs, ... }:
rec {
  use = name: (import ./${"${name}.nix"}) pkgs;
  combine = lhs: rhs: {
    lsp = (lhs.lsp or {}) // (rhs.lsp or {});
    entries = (lhs.entries or []) ++ (rhs.entries or []);
  };

  intoHelixFormat = cfg: {
    language-server = cfg.lsp;
    language = cfg.entries;
  };
  useMany = langs: builtins.foldl' combine {} (map use langs);
}

