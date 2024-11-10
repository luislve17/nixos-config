{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    waybar
  ];

  programs.waybar = {
    enable = true;
    style = ''
    * {
        font-family: 'SF Mono', sans-serif;
        font-weight: bold;
        font-size: 15px;
        border-radius: 10px;
    }

    window#waybar {
        background-color: transparent;
        color: #ebdbb2;
    }

    #workspaces {
    }

    #workspaces button.active {
        background-color: #8ec07c;
        padding: 0 15px 0 15px;
        color: #282828;
    }

    .modules-left {
        padding-left: 20px;
        padding-right: 20px;
    }

    .modules-right {
        padding-right: 20px;
        padding-left: 20px;
    }

    .modules-center {
        background-color: #282828;
    }

    #battery {
        padding-right: 20px;
        padding-left: 20px;
        margin-right: 15px;
        color: #83a598;
        background-color: #282828;
    }

    #clock {
        padding-right: 20px;
        padding-left: 20px;
        margin-left: 15px;
        background-color: #282828;
        color: #b8bb26;
    }

    #network {
        padding-right: 20px;
        padding-left: 20px;
        background-color: #282828;
        color: #d3869b;
    }

    #pulseaudio {
        padding-right: 20px;
        padding-left: 20px;
        margin-right: 15px;
        background-color: #282828;
        color: #fabd2f;
    }

    #backlight {
        padding-right: 20px;
        padding-left: 20px;
        background-color: #282828;
        color: #fe8019;
    }
    '';

    settings = [{
      layer = "top";
      position = "top";
      height = 20;
      margin-top = 10;
      modules-left = ["battery" "pulseaudio" "backlight"];
      modules-center = ["hyprland/workspaces"];
      modules-right = ["network" "clock"];
      battery = {
          format = "bat: {capacity}%";
          format-charging = "charging: {capacity}%";
      };
      clock = {
          format = "{:%I:%M %p}";
          format-alt = "{:%a, %d. %b  %I:%M %p}";
      };
      pulseaudio = {
          format = "vol: {volume}%";
          format-bluetooth = "blu: {volume}%";
          format-muted = "vol: muted";
          scroll-step = 1;
          on-click = "pavucontrol";
          ignored-sinks = ["Easy Effects Sink"];
      };
      network = {
          interface = "wlp0s20f3";
          format = "{ifname}";
          format-wifi = "wlp0s20f3: {essid}";
          format-disconnected = "wlp0s20f3: disconnected";
          max-length = 50;
      };
      "hyprland/workspaces" = {
        "format" = "{icon}";
        "on-click" = "activate";
        "format-icons" = {
          "1" = "一";
          "2" = "二";
          "3" = "三";
          "4" = "四";
          "5" = "五";
          "6" = "六";
          "7" = "七";
          "8" = "八";
          "9" = "九";
          "10" = "十";
        };
        "sort-by-number" = true;
      };
      backlight = {
        device = "intel_backlight";
        format = "bl: {percent}%";
      };
    }];
  };
}
