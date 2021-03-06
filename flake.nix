{
  description = "Restic";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        packages.restic = import ./restic.nix { inherit pkgs; };
        defaultPackage = self.packages.${system}.restic;
        devShell = pkgs.mkShell {
          buildInputs = [ self.packages.${system}.restic ];
        };
      });
}
