{ pkgs, ... }:

{
  home.packages = with pkgs;[
    git
  ];

  programs.git = {
    enable = true;
    extraConfig = {
      core = {
        editor = "hx";
      };
    };
    delta = {
      enable = true;
      options = {
        side-by-side = true;
        navigate = true;
        line-numbers = true;
      };
    };
  };
}

