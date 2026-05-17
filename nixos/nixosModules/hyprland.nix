{ config, pkgs, ... }:

{
  # Enable X server and GDM (GNOME Display Manager)
  services = {
    xserver.enable = true;
    displayManager.gdm.enable = true;
    displayManager.gdm.wayland = true;
  };

  # Enable Hyprland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true; # Enable XWayland for compatibility with X11 apps
  };

  # Add Hyprland session file for GDM
  environment.etc."usr/share/wayland-sessions/hyprland.desktop".text = ''
    [Desktop Entry]
    Name=Hyprland
    Comment=A dynamic tiling Wayland compositor
    Exec=Hyprland
    Type=Application
    DesktopNames=Hyprland
    Keywords=tiling;wm;wayland;
  '';

  # Set session variables for Wayland compatibility
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1"; # For Electron apps on Wayland
    WLR_NO_HARDWARE_CURSORS = "1"; # Fix cursor rendering issues for some GPUs
  };

  # Install required packages (only swww, waybar, and alacritty)
  environment.systemPackages = with pkgs; [
    waybar # Status bar for Wayland compositors
    rofi # app launcher
    hyprpaper # wallpaper manager
    grim # screenshot tool
    swappy # small editor
    slurp # region selector
    playerctl # media player commmandline utility (allows skip button on keyboard)
    mako # notification daemon
  ];

  # Optional: Automatically start Alacritty and Waybar in Hyprland
  systemd.user.services.hyprland-session = {
    enable = true;
    description = "Start applications in Hyprland session";
    serviceConfig = {
      ExecStartPre = "${pkgs.swww}/bin/swww init"; # Initialize swww wallpaper manager
      ExecStart = "${pkgs.alacritty}/bin/alacritty & ${pkgs.waybar}/bin/waybar";
      Restart = "always";
    };
  };
}
