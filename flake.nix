{
  description = "Ollama container";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, flake-utils, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      # NixOS container configuration
      nixosConfigurations.container = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./ollama/container.nix
        ];
      };
    }; 
} 
