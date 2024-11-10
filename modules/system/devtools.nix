{ pkgs, ... }:

{
  home.packages = with pkgs;[
    tree
    gnumake42
    delta
  ];
}
