{ inputs, config, pkgs, ... }:

{
  imports = [
    inputs.stylix.homeModules.stylix
  ];

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

stylix = {
  enable = true;

  # Theme and wallpaper
  base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";
  image = ./dotfiles/Aurora.jpg;

  # Cursor
  cursor.package = pkgs.bibata-cursors;
  cursor.name = "Bibata-Modern-Ice";
  cursor.size = 24;

  # Fonts
  fonts = {
    monospace = {
      package = pkgs.nerd-fonts.jetbrains-mono;
      name = "JetBrainsMono Nerd Font Mono";
    };
    sansSerif = {
      package = pkgs.dejavu_fonts;
      name = "DejaVu Sans";
    };
    serif = {
      package = pkgs.dejavu_fonts;
      name = "DejaVu Serif";
    };
  };

  # Targets
  targets.qt.enable = true;
  targets.gtk.enable = true;
  targets.qt.platform = "qtct";
};

}
