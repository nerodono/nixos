{
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;

  home-manager.users.nero = import ./nero;
  home-manager.users.root = import ./root;
}
