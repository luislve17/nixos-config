{ pkgs, ... }: {
  home.packages = with pkgs; [
    kitty
  ];

  programs.kitty = {
    enable = true;
    font = {
      name = "FiraCode Nerd Font Mono";
      size = 14;
    };
    settings = {
      confirm_os_window_close = 0;
      enable_audio_bell = false;
      cursor_shape = "block";
    };
    themeFile = "Catppuccin-Mocha";
  };
}
