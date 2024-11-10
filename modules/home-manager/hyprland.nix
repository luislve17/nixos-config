{ pkgs, lib, inputs, ... }: 
                                                                          
{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      exec-once = [
        "${pkgs.hyprpaper}/bin/hyprpaper"
      ];
    	"monitor" = [
        ",1920x1080,auto,1,bitdepth,8"
        ",preferred,auto,1,mirror,eDP-1,bitdepth,8"
      ];
      "xwayland" = {
        "force_zero_scaling" = true;
      };
      "$terminal" = "kitty";
      "$mainMod" = "SUPER";
      "$browser" = "floorp";

      animations = {
        enabled = "yes";
        bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
        animation = [
          "windows, 1, 5, myBezier"
          "windowsOut, 1, 7, default, popin 80%"
          "border, 1, 10, default"
          "fade, 1, 7, default"
          "workspaces, 1, 10, myBezier, fade"
        ];
      };

      bind = [
  			# Bind volume keys on laptops
  			", XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%+"
  			", XF86AudioLowerVolume, exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%-"
  			", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
			
  			# Bind brightness keys on laptops
  			", XF86MonBrightnessDown, exec, brightnessctl set 5%-"
  			", XF86MonBrightnessUp, exec, brightnessctl set +5%"
			
  			"$mainMod, F, fullscreen"
  			"$mainMod, RETURN, exec, $terminal"
  			"$mainMod, B, exec, $browser"
  			"$mainMod, D, killactive,"
  			"$mainMod, Q, exit,"
  			"$mainMod, V, togglefloating,"
			
  			# Bind to reload waybar
  			# "$mainMod, Z, exec, kill $(pidof waybar) && waybar"
			
  			# Move focus with mainMod + arrow keys
  			"$mainMod, left, movefocus, l"
  			"$mainMod, right, movefocus, r"
  			"$mainMod, up, movefocus, u"
  			"$mainMod, down, movefocus, d"
			
  			# Scroll through existing workspaces with mainMod + scroll
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"

  			"Control_L&Alt_L, right, workspace, e+1"
  			"Control_L&Alt_L, left, workspace, e-1"

  			"$mainMod&Shift_L, 1, movetoworkspace, 1"
  			"$mainMod&Shift_L, 2, movetoworkspace, 2"
  			"$mainMod&Shift_L, 3, movetoworkspace, 3"
  			"$mainMod&Shift_L, 4, movetoworkspace, 4"
  			"$mainMod&Shift_L, 5, movetoworkspace, 5"
  			"$mainMod&Shift_L, 6, movetoworkspace, 6"
  			"$mainMod&Shift_L, 7, movetoworkspace, 7"
  			"$mainMod&Shift_L, 8, movetoworkspace, 8"
  			"$mainMod&Shift_L, 9, movetoworkspace, 9"

        "Alt_L&Control_L&Shift_L, right, movetoworkspace, e+1"
        "Alt_L&Control_L&Shift_L, left, movetoworkspace, e-1"
  		];
    };
  };
}
