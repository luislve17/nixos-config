{ pkgs, ... }:

let
  pkgs = import (builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/55070e598e0e03d1d116c49b9eff322ef07c6ac6.tar.gz";
    sha256 = "002wqi6wz795pzwlf0jp1z426mv3zfwx95zkk76y3zn87hll78kq";
  }) {system = "x86_64-linux";};
in
{
  home.packages = with pkgs; [
    go_1_20
  ];
}

