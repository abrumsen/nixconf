{
  description = "A.Brumsen's system flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {nixpkgs, ...} @ inputs: {
    nixosConfigurations = {
      sneeuwvlok = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs;};
        modules = [
          {
            nixpkgs.overlays = [
              inputs.niri.overlays.niri
            ];
          }
          ./hosts/sneeuwvlok/configuration.nix
          inputs.home-manager.nixosModules.default
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.abrumsen = import ./hm/default.nix;
            };
          }
          inputs.nvf.nixosModules.default
          inputs.niri.nixosModules.niri
        ];
      };
      # Other hosts go here...
    };
  };
}
