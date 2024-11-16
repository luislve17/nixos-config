{ pkgs, ... }:

{
  home.packages = with pkgs;[
    brightnessctl
    nemo  # file manager
    unzip
    spotify
  ];
}
