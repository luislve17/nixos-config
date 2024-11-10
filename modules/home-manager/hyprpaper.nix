{ inputs, pkgs, config, ...}:

let
  wallpaper = pkgs.fetchurl {
    url = "https://i.redd.it/nzx3460i9nzd1.jpeg";
    hash = "sha256-FPvKD6BTQ7LqO6c4JFTMwDg2J2TyV7AVw14yYjEDRfs=";
  };
in
  {
    home.packages = [
      pkgs.hyprpaper
    ];

    services.hyprpaper = {
      enable = true;
      settings = {
        ipc = "on";
        splash = false;
        preload = [
          (builtins.toString wallpaper)
        ];

        wallpaper = [
          "eDP-1,${builtins.toString wallpaper}"
        ];
      };
    };
  }
