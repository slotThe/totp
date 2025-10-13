{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      cbqn = pkgs.cbqn.overrideAttrs(old: rec {
        version = "bf0075d73fa9a6827b48090838fc778ee71f52ae";
        src = pkgs.fetchFromGitHub {
          owner = "dzaima";
          repo = "CBQN";
          rev = version;
          hash = "sha256-UhKzkJwDJAlVYBRmpsCEs7pZCm0IMF331aV11p34pLk=";
        };
        doInstallCheck = false;
      });
    in {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = [
          cbqn
        ];
      };
    };
}
