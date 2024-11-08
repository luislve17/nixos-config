{ pkgs, ... }:

{
  home.packages = with pkgs;[
    brightnessctl
    floorp # browser
  ];
}
