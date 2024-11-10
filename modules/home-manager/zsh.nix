{ pkgs, ... }: {
  home.packages = [
    pkgs.zsh
  ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    initExtra = ''
      pfetch
    '';
    oh-my-zsh = {
      enable = true;
      theme = "gallifrey";
      plugins = [
        "git"
      ];
    };
  };
}
