{
  config,
  lib,
  pkgs,
  ...
}:

{

  home.username = "leob";

  home.homeDirectory = "/home/leob";

  home.packages = with pkgs; [
    hello
  ];

  home.sessionVariables = {
    EDITOR = "code";
  };

  home.stateVersion = "22.11";

  programs.home-manager.enable = true;
  programs.alacritty.enable = true;

  #home.file.".config/starship.toml".source = ./dotfiles/starship/starship.toml;
  home.file.".config/waybar/config.jsonc".source = ./dotfiles/waybar/config.jsonc;
  home.file.".config/waybar/style.css".source = ./dotfiles/waybar/style.css;
  home.file.".config/hypr/hyprland.conf".source = ./dotfiles/hyprland/hyprland.conf;

  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "on"; # Enables IPC for runtime control
      preload = [
        "./dotfiles/Aurora.jpg"
      ];
      wallpaper = [
        "DP-1,./dotfiles/Aurora.jpg"
      ];
    };
  };

  programs.rofi = {
    enable = true;
    extraConfig = {
      "show-icons" = true;
      "icon-theme" = "Papirus";
    };
  };

  programs.firefox = {
    enable = true;
    profiles = {
      "default" = {
        id = 0;
        name = "default";
      };
    };
  };

  stylix = {
    enable = true;
    targets.qt.enable = true;
    targets.gtk.enable = true;
    targets.qt.platform = "qtct";
    targets.neovim.enable = false;
  };

  services.mako = {
    enable = true;
    settings = {
      default-timeout = 2000;
      ignore-timeout = true;
      max-visible = 3;
    };
  };

  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;

    extraWrapperArgs = [
      "--set"
      "NIX_NEOVIM"
      "1"
      "--suffix"
      "LD_LIBRARY_PATH"
      ":"
      "${lib.makeLibraryPath [ pkgs.stdenv.cc.cc.lib ]}"
      "--suffix"
      "PKG_CONFIG_PATH"
      ":"
      "${pkgs.pkg-config}/lib/pkgconfig"
    ];
  };

}
