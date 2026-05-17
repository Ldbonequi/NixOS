{ config, pkgs, ... }:

{
  nixpkgs.config.permittedInsecurePackages = [
    "qtwebengine-5.15.19"
  ];

  # Declare the packages to be included in the system environment
  environment.systemPackages = with pkgs; [
    vscode-fhs
    fzf # fuzzy find fast
    fd # better find
    ripgrep # grep fast
    cmake
    libtool
    git
    gh # git hub cli for auth
    neovim # text editor
    wl-clipboard # allow nvim to access system keyboard
    pkg-config
    openssl
    zlib
    nodejs # build tools maybe redundant
    jdk21 # java stable 21
    gradle # java build system
    maven # Build automation tool for java
    (python3.withPackages (
      p: with p; [
        # python stable build with packages below use instead of pip
        pycodestyle # python linter
        autopep8 # python formatter
        ipykernel
      ]
    ))
    postman # postman webhook testing
    #gpclient #csu connection vpn
    #globalprotect-openconnect #gui for gpclient
    gcc # c++
    curl # download and create packages
    gnumake # makefiles for c++
    cowsay # cow
    pipes # pipes terminal screen saver

    #Lsps
    pyright # python
    nil # nil_ls (nix)
    lua-language-server # lua
    jdt-language-server # jdtls (java)
    marksman # lang.markdown LSP

    #formaters / linters
    statix # Nix linter
    selene # Lua linter (LazyVim default)
    stylua # Lua formatter
    nixpkgs-fmt # Nix formatter
    black # Python formatter
    ruff # Python linter

    #Debug adapter protocol
    lldb # python
  ];
}
