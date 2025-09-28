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
      Maven #Build automation tool for java
    (python3.withPackages(p: with p; [ #python stable build with packages below use instead of pip
      numpy #math
      pandas #math / linear algebra stuff
      pycodestyle #detect pep 8 errors in python
      autopep8 #auto python formater to pep8 standard
    ])) 
    gpclient #csu connection vpn
      globalprotect-openconnect #gui for gpclient
    cowsay #cow
  ];
}