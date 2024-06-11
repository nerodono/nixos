{ pkgs, ... }:
let
  sonokai = import themes/sonokai;
  langs = (import ./langs) pkgs;
in
{
  programs.helix = {
    enable = true;

    settings = {
      theme = "sonokai-andromeda";
      editor.cursor-shape = {
        normal = "block";
        insert = "bar";
        select = "underline";
      };
    };

    themes = {
      sonokai-andromeda = sonokai "andromeda";
    };
  };
}
