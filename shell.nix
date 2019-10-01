{ nixpkgs ? import <nixpkgs> {} }:
let
  inherit (nixpkgs) pkgs;
  inherit (pkgs) haskellPackages;

  project = import ./release.nix;
in
pkgs.mkShell {
  name = "shell";
  buildInputs =
    project.getBuildInputs.haskellBuildInputs
    ++ [
      pkgs.sox
      haskellPackages.cabal-install
    ];
}
