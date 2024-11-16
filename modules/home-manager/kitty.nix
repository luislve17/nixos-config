{ pkgs, ... }:

{
  home.packages = with pkgs; [
    kitty
  ];

  programs.kitty = {
    enable = true;
    font = {
      name = "FiraCode Nerd Font";
      size = 14;
    };
    settings = {
      confirm_os_window_close = 0;
      enable_audio_bell = false;
    };
    extraConfig = ''
      modify_font cell_height -2px
      modify_font cell_width -1px
    '';
    themeFile = "Catppuccin-Mocha";
  };
}
