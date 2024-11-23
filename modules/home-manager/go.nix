{ pkgs, ... }:

{
  home.packages = with pkgs; [
    go_1_22
  ];
}

