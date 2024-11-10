{ pkgs, ... }:

{
  home.packages = with pkgs;[
    pfetch
  ];
  home.sessionVariables = {
    PF_INFO = "title os host kernel uptime pkgs memory";
    PF_SEP = ":";
    PF_COLOR = 1;
  };
}

