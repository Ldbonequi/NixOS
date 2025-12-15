{config, pkgs, ...}:

{

home.username = "leob";

home.homeDirectory = "/home/leob";

home.packages = [
	pkgs.hello
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
    ipc = "on";  # Enables IPC for runtime control
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
};

services.mako = {
  enable = true;
  settings = {
    default-timeout = 2000;
    ignore-timeout = true;
    max-visible = 3;
  };
};

}
