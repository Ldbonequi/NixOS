{ config, pkgs, ... }:

{
  nixpkgs.config.permittedInsecurePackages = [
    "qtwebengine-5.15.19"
  ];

  # Declare the packages to be included in the system environment
  environment.systemPackages = with pkgs; [
    vscode-fhs
    git
      gh #git hub cli for auth
    neovim #text editor
    	wl-clipboard #allow nvim to access system keyboard
    jdk23 #java stable 23
    gradle #java build system
    python3 #python stable build 
    gpclient #csu connection vpn
      globalprotect-openconnect #gui for gpclient
    cowsay #cow
  ];
}