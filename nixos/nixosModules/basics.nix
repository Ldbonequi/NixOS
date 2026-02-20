{ config, pkgs, ... }:

{
  # Declare the packages to be included in the system environment
  environment.systemPackages = with pkgs; [
    spotify     # Spotify desktop application
    firefox     # Firefox browser
    obsidian # notes
    vesktop #discord with vencord and more linux support
      pipewire #screenshare sound util
      wireplumber #screenshare video util
    _1password-gui #1password
    zoom-us #zoom meeting software
  ];
}

