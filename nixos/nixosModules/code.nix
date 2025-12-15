{ config, pkgs, ... }:

{
  nixpkgs.config.permittedInsecurePackages = [
    "qtwebengine-5.15.19"
  ];

  # Declare the packages to be included in the system environment
  environment.systemPackages = with pkgs; [
    vscode-fhs
    emacs
    fzf #fuzzy find fast
    ripgrep #grep fast
    cmake
      libtool
    git
      gh #git hub cli for auth
    neovim #text editor
    	wl-clipboard #allow nvim to access system keyboard
    jdk21 #java stable 21
      gradle #java build system
      maven #Build automation tool for java
    (python3.withPackages(p: with p; [ #python stable build with packages below use instead of pip
      numpy #math
      pandas #math / linear algebra stuff
      pycodestyle #detect pep 8 errors in python
      autopep8 #auto python formater to pep8 standard
    ])) 
    postman #postman webhook testing
    #gpclient #csu connection vpn
      #globalprotect-openconnect #gui for gpclient
    gcc #c++
    gnumake #makefiles for c++
    cowsay #cow
    pipes #pipes terminal screen saver
  ];
}
