let
  pkgs = import <nixpkgs> {};
in
  pkgs.haskellPackages.callPackage ./base.nix {}
