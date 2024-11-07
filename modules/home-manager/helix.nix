{ pkgs, ... }:

{
  home.packages = [
    pkgs.helix
  ];

  programs.helix = {
    enable = true;
    settings = {
      theme = "catppuccin_mocha";
      editor = {
        line-number = "absolute";
        mouse = true;
        bufferline = "always";
        color-modes = true;
        true-color = true;
        scrolloff = 10;
        popup-border = "all";
        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };
        indent-guides = {
          render = true;
        };
        file-picker = {
          hidden = false;
        };
        soft-wrap = {
          enable = true;
        };
        smart-tab = {
          enable = true;
        };
      };
      keys.normal = {
        A-d = ["ensure_selections_forward" "extend_to_line_end" "delete_selection"];
        A-c = ["ensure_selections_forward" "extend_to_line_end" "change_selection"];
        A-left = ["goto_previous_buffer"];
        A-right = ["goto_next_buffer"];
        A-w = ":buffer-close";
        C-d = ["half_page_down" "goto_window_center"];
        C-u = ["half_page_up" "goto_window_center"];
      };
    };
  };
}
