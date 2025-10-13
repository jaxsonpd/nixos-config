{
  description = "Multi-device NixOS config with Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
    let
      systemTypes = {
        x86_64 = "x86_64-linux";
        arm = "aarch64-linux";
      };

      mkHost = name: system:
        nixpkgs.lib.nixosSystem {
          system = system;
          modules = [
            ./hosts/${name}/configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.backupFileExtension = "backup";
              home-manager.useUserPackages = true;
              home-manager.useGlobalPkgs = true;
              home-manager.users.jackd = import ./home/jackd/common.nix;
            }
          ];
        };
    in
    {
      nixosConfigurations = {
        laptop = mkHost "laptop" systemTypes.x86_64;
        rpi = mkHost "rpi" systemTypes.arm;
        wsl = mkHost "wsl" systemTypes.x86_64;
      };
    };
}
