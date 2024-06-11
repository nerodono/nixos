{
  description = "Nixos";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    agenix.url = "github:ryantm/agenix";
    agenix.inputs = {
      nixpkgs.follows = "nixpkgs";
      home-manager.follows = "home-manager";
    };
  };

  outputs = {
    nixpkgs,
    home-manager,
    agenix,
    ...
  }@inputs: {
    nixosConfigurations.lil-maid = nixpkgs.lib.nixosSystem (
      let
        system = "x86_64-linux";
      in
      {
        system = system;
        modules = [
          home-manager.nixosModules.home-manager
          agenix.nixosModules.default

          ./configuration.nix
          ./home-manager
        ];

        specialArgs = {
          system = system;
          flake-inputs = inputs;
        };
      }
    );
  };
}
