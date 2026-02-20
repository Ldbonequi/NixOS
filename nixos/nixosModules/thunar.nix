{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    thunar # file browser
    file-roller # gui archive manager

    #archive programs
    zip # .zip
    unzip # .zip
    gzip # .gz .bz2
    p7zip # .7z
    gnutar # .tar
  ];

  programs.thunar = {
    enable = true;
    plugins = with pkgs; [
      thunar-archive-plugin
      thunar-volman
    ];
  };

  services.gvfs.enable = true;
  services.tumbler.enable = true;
}
